// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azuredatatransfer_list_azure_data_transfer_flow_profiles_args_doc}
/// Arguments for listAzureDataTransferFlowProfiles.
/// {@endtemplate}
/// {@macro pulumi_azuredatatransfer_list_azure_data_transfer_flow_profiles_args_doc}
class ListAzureDataTransferFlowProfilesArgs {
  /// The name of the pipeline for which to retrieve associated FlowProfiles.
  final pulumi.Input<String>? pipeline;

  /// Creates a new [ListAzureDataTransferFlowProfilesArgs].
  /// [pipeline] The name of the pipeline for which to retrieve associated FlowProfiles.
  const ListAzureDataTransferFlowProfilesArgs({
    this.pipeline,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pipeline': ?pipeline,
    };
  }

  factory ListAzureDataTransferFlowProfilesArgs.fromMap(Map<String, dynamic> map) {
    return ListAzureDataTransferFlowProfilesArgs(
      pipeline: (() { final guardedValue = map['pipeline']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
