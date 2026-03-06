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
  const ListAzureDataTransferApprovedSchemasArgs({
    this.direction,
    this.pipeline,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'pipeline': ?pipeline,
    };
  }

  factory ListAzureDataTransferApprovedSchemasArgs.fromMap(Map<String, dynamic> map) {
    return ListAzureDataTransferApprovedSchemasArgs(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pipeline: (() { final guardedValue = map['pipeline']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

