// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_get_activations_get_activations_args_doc}
/// Arguments for getActivations.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_activations_get_activations_args_doc}
class GetActivationsArgs {
  /// A list of Activation IDs.
  final pulumi.Input<List<String>>? ids;
  /// The default prefix of the instance name.
  final pulumi.Input<String>? instanceName;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;

  /// Creates a new [GetActivationsArgs].
  /// [ids] A list of Activation IDs.
  /// [instanceName] The default prefix of the instance name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  GetActivationsArgs({
    List<String>? ids,
    String? instanceName,
    String? outputFile,
    int? pageNumber,
    int? pageSize,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'instanceName': ?instanceName,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
    };
  }

  factory GetActivationsArgs.fromMap(Map<String, dynamic> map) {
    return GetActivationsArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      instanceName: map['instanceName'] == null ? null : map['instanceName'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
    );
  }
}

