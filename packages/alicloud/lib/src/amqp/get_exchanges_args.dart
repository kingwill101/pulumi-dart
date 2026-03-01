// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_amqp_get_exchanges_get_exchanges_args_doc}
/// Arguments for getExchanges.
/// {@endtemplate}
/// {@macro pulumi_amqp_get_exchanges_get_exchanges_args_doc}
class GetExchangesArgs {
  /// A list of Exchange IDs. Its element value is same as Exchange Name.
  final pulumi.Input<List<String>>? ids;
  /// The ID of the instance.
  final pulumi.Input<String> instanceId;
  /// A regex string to filter results by Exchange name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The name of virtual host where an exchange resides.
  final pulumi.Input<String> virtualHostName;

  /// Creates a new [GetExchangesArgs].
  /// [ids] A list of Exchange IDs. Its element value is same as Exchange Name.
  /// [instanceId] The ID of the instance.
  /// [nameRegex] A regex string to filter results by Exchange name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [virtualHostName] The name of virtual host where an exchange resides.
  GetExchangesArgs({
    List<String>? ids,
    required String instanceId,
    String? nameRegex,
    String? outputFile,
    required String virtualHostName,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      virtualHostName = pulumi.Input.asInput<String>(virtualHostName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'virtualHostName': virtualHostName,
    };
  }

  factory GetExchangesArgs.fromMap(Map<String, dynamic> map) {
    return GetExchangesArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      virtualHostName: map['virtualHostName'] as String,
    );
  }
}

