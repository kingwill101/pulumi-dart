// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bindings_binding.dart';

/// Result data returned by getBindings.
class GetBindingsResult {
  final List<GetBindingsBinding> bindings;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String instanceId;
  final String? outputFile;
  final String virtualHostName;

  /// Creates a new [GetBindingsResult].
  /// [bindings] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] Required.
  /// [outputFile] Optional.
  /// [virtualHostName] Required.
  GetBindingsResult({
    required this.bindings,
    required this.id,
    required this.ids,
    required this.instanceId,
    this.outputFile,
    required this.virtualHostName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindings':
          pulumi.Input.encodeList<GetBindingsBinding, Map<String, dynamic>>(
            bindings,
            (value) => value.toMap(),
          ),
      'id': id,
      'ids': ids,
      'instanceId': instanceId,
      'outputFile': ?outputFile,
      'virtualHostName': virtualHostName,
    };
  }

  factory GetBindingsResult.fromMap(Map<String, dynamic> map) {
    return GetBindingsResult(
      bindings: pulumi.Input.decodeList<GetBindingsBinding>(
        map['bindings']!,
        (value) =>
            GetBindingsBinding.fromMap((value as Map).cast<String, dynamic>()),
      ),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      virtualHostName: map['virtualHostName'] as String,
    );
  }
}
