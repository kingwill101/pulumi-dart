// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigquerydatatransfer_v1_get_transfer_config_args_doc}
/// Arguments for getTransferConfig.
/// {@endtemplate}
/// {@macro pulumi_bigquerydatatransfer_v1_get_transfer_config_args_doc}
class GetTransferConfigArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> transferConfigId;

  /// Creates a new [GetTransferConfigArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [transferConfigId] Required.
  GetTransferConfigArgs({
    required String location,
    String? project,
    required String transferConfigId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      transferConfigId = pulumi.Input.asInput<String>(transferConfigId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'transferConfigId': transferConfigId,
    };
  }

  factory GetTransferConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetTransferConfigArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      transferConfigId: map['transferConfigId'] as String,
    );
  }
}

