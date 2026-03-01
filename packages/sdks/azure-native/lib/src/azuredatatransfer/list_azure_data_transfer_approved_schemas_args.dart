// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azuredatatransfer_list_azure_data_transfer_approved_schemas_args_doc}
/// Arguments for listAzureDataTransferApprovedSchemas.
/// {@endtemplate}
/// {@macro pulumi_azuredatatransfer_list_azure_data_transfer_approved_schemas_args_doc}
class ListAzureDataTransferApprovedSchemasArgs {
  /// The direction pipeline to filter approved schemas.
  final pulumi.Input<String>? direction;
  /// The name of the pipeline to filter approved schemas.
  final pulumi.Input<String>? pipeline;

  /// Creates a new [ListAzureDataTransferApprovedSchemasArgs].
  /// [direction] The direction pipeline to filter approved schemas.
  /// [pipeline] The name of the pipeline to filter approved schemas.
  ListAzureDataTransferApprovedSchemasArgs({
    pulumi.Output<String>? direction,
    pulumi.Output<String>? pipeline,
  }) :
      direction = pulumi.Input.asOptionalInput<String>(direction),
      pipeline = pulumi.Input.asOptionalInput<String>(pipeline);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'pipeline': ?pipeline,
    };
  }

  factory ListAzureDataTransferApprovedSchemasArgs.fromMap(Map<String, dynamic> map) {
    return ListAzureDataTransferApprovedSchemasArgs(
      direction: map['direction'] == null ? null : pulumi.Output.create<String>(map['direction'] as String),
      pipeline: map['pipeline'] == null ? null : pulumi.Output.create<String>(map['pipeline'] as String),
    );
  }
}

