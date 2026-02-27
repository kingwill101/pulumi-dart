// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_source_details.dart';
import 'azure_source_details.dart';
import 'encryption_vmmigration_v1.dart';
import 'vmware_source_details.dart';

/// The set of arguments for Source.
class SourceVmmigrationV1Args {
  /// AWS type source details.
  final pulumi.Input<AwsSourceDetails>? aws;

  /// Azure type source details.
  final pulumi.Input<AzureSourceDetails>? azure;

  /// User-provided description of the source.
  final pulumi.Input<String>? description;

  /// Optional. Immutable. The encryption details of the source data stored by the service.
  final pulumi.Input<EncryptionVmmigrationV1>? encryption;

  /// The labels of the source.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Required. The source identifier.
  final pulumi.Input<String> sourceId;

  /// Vmware type source details.
  final pulumi.Input<VmwareSourceDetails>? vmware;

  SourceVmmigrationV1Args({
    this.aws,
    this.azure,
    this.description,
    this.encryption,
    this.labels,
    this.location,
    this.project,
    this.requestId,
    required this.sourceId,
    this.vmware,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsValue = aws;
    if (awsValue != null) {
      map['aws'] = pulumi.Input.mapOptionalInputValue<AwsSourceDetails,
          Map<String, dynamic>>(awsValue, (value) => value.toMap());
    }
    final azureValue = azure;
    if (azureValue != null) {
      map['azure'] = pulumi.Input.mapOptionalInputValue<AzureSourceDetails,
          Map<String, dynamic>>(azureValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final encryptionValue = encryption;
    if (encryptionValue != null) {
      map['encryption'] = pulumi.Input.mapOptionalInputValue<
          EncryptionVmmigrationV1,
          Map<String, dynamic>>(encryptionValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    map['sourceId'] = sourceId;
    final vmwareValue = vmware;
    if (vmwareValue != null) {
      map['vmware'] = pulumi.Input.mapOptionalInputValue<VmwareSourceDetails,
          Map<String, dynamic>>(vmwareValue, (value) => value.toMap());
    }
    return map;
  }

  factory SourceVmmigrationV1Args.fromMap(Map<String, dynamic> map) {
    return SourceVmmigrationV1Args(
      aws: pulumi.Input.asOptionalInput<AwsSourceDetails>(map['aws']),
      azure: pulumi.Input.asOptionalInput<AzureSourceDetails>(map['azure']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      encryption: pulumi.Input.asOptionalInput<EncryptionVmmigrationV1>(
          map['encryption']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      sourceId: pulumi.Input.asInput<String>(map['sourceId']),
      vmware: pulumi.Input.asOptionalInput<VmwareSourceDetails>(map['vmware']),
    );
  }
}
