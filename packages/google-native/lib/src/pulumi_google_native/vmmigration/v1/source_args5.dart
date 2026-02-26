// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'aws_source_details.dart';
import 'azure_source_details.dart';
import 'encryption2.dart';
import 'vmware_source_details.dart';

/// The set of arguments for Source.
class SourceArgs5 {
  /// AWS type source details.
  final Input<AwsSourceDetails>? aws;

  /// Azure type source details.
  final Input<AzureSourceDetails>? azure;

  /// User-provided description of the source.
  final Input<String>? description;

  /// Optional. Immutable. The encryption details of the source data stored by the service.
  final Input<Encryption2>? encryption;

  /// The labels of the source.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;
  final Input<String>? project;

  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Required. The source identifier.
  final Input<String> sourceId;

  /// Vmware type source details.
  final Input<VmwareSourceDetails>? vmware;

  SourceArgs5({
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
      map['aws'] =
          Input.mapOptionalInputValue<AwsSourceDetails, Map<String, dynamic>>(
              awsValue, (value) => value.toMap());
    }
    final azureValue = azure;
    if (azureValue != null) {
      map['azure'] =
          Input.mapOptionalInputValue<AzureSourceDetails, Map<String, dynamic>>(
              azureValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final encryptionValue = encryption;
    if (encryptionValue != null) {
      map['encryption'] =
          Input.mapOptionalInputValue<Encryption2, Map<String, dynamic>>(
              encryptionValue, (value) => value.toMap());
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
      map['vmware'] = Input.mapOptionalInputValue<VmwareSourceDetails,
          Map<String, dynamic>>(vmwareValue, (value) => value.toMap());
    }
    return map;
  }

  factory SourceArgs5.fromMap(Map<String, dynamic> map) {
    return SourceArgs5(
      aws: Input.asOptionalInput<AwsSourceDetails>(map['aws']),
      azure: Input.asOptionalInput<AzureSourceDetails>(map['azure']),
      description: Input.asOptionalInput<String>(map['description']),
      encryption: Input.asOptionalInput<Encryption2>(map['encryption']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      sourceId: Input.asInput<String>(map['sourceId']),
      vmware: Input.asOptionalInput<VmwareSourceDetails>(map['vmware']),
    );
  }
}
