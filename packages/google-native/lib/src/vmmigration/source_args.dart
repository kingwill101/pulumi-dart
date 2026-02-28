// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_source_details.dart';
import 'azure_source_details.dart';
import 'encryption.dart';
import 'vmware_source_details.dart';

/// {@template pulumi_vmmigration_v1_source_args_doc}
/// The set of arguments for Source.
/// {@endtemplate}
/// {@macro pulumi_vmmigration_v1_source_args_doc}
class SourceArgs {
  /// AWS type source details.
  final pulumi.Input<AwsSourceDetails>? aws;

  /// Azure type source details.
  final pulumi.Input<AzureSourceDetails>? azure;

  /// User-provided description of the source.
  final pulumi.Input<String>? description;

  /// Optional. Immutable. The encryption details of the source data stored by the service.
  final pulumi.Input<Encryption>? encryption;

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

  /// Creates a new [SourceArgs].
  /// [aws] AWS type source details.
  /// [azure] Azure type source details.
  /// [description] User-provided description of the source.
  /// [encryption] Optional. Immutable. The encryption details of the source data stored by the service.
  /// [labels] The labels of the source.
  /// [location] Optional.
  /// [project] Optional.
  /// [requestId] A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [sourceId] Required. The source identifier.
  /// [vmware] Vmware type source details.
  SourceArgs({
    AwsSourceDetails? aws,
    AzureSourceDetails? azure,
    String? description,
    Encryption? encryption,
    Map<String, String>? labels,
    String? location,
    String? project,
    String? requestId,
    required String sourceId,
    VmwareSourceDetails? vmware,
  })  : aws = pulumi.Input.asOptionalInput<AwsSourceDetails>(aws),
        azure = pulumi.Input.asOptionalInput<AzureSourceDetails>(azure),
        description = pulumi.Input.asOptionalInput<String>(description),
        encryption = pulumi.Input.asOptionalInput<Encryption>(encryption),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        requestId = pulumi.Input.asOptionalInput<String>(requestId),
        sourceId = pulumi.Input.asInput<String>(sourceId),
        vmware = pulumi.Input.asOptionalInput<VmwareSourceDetails>(vmware);

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
      map['encryption'] =
          pulumi.Input.mapOptionalInputValue<Encryption, Map<String, dynamic>>(
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
      map['vmware'] = pulumi.Input.mapOptionalInputValue<VmwareSourceDetails,
          Map<String, dynamic>>(vmwareValue, (value) => value.toMap());
    }
    return map;
  }

  factory SourceArgs.fromMap(Map<String, dynamic> map) {
    return SourceArgs(
      aws: map['aws'] == null
          ? null
          : AwsSourceDetails.fromMap(
              (map['aws'] as Map).cast<String, dynamic>()),
      azure: map['azure'] == null
          ? null
          : AzureSourceDetails.fromMap(
              (map['azure'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      encryption: map['encryption'] == null
          ? null
          : Encryption.fromMap(
              (map['encryption'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      sourceId: map['sourceId'] as String,
      vmware: map['vmware'] == null
          ? null
          : VmwareSourceDetails.fromMap(
              (map['vmware'] as Map).cast<String, dynamic>()),
    );
  }
}
