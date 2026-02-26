// ignore_for_file: unused_element, unnecessary_cast

import 'aws_source_details_response2.dart';
import 'azure_source_details_response2.dart';
import 'encryption_response3.dart';
import 'status_response31.dart';
import 'vmware_source_details_response2.dart';

/// Result data returned by getSource.
class GetSourceResult6 {
  /// AWS type source details.
  final AwsSourceDetailsResponse2 aws;

  /// Azure type source details.
  final AzureSourceDetailsResponse2 azure;

  /// The create time timestamp.
  final String createTime;

  /// User-provided description of the source.
  final String description;

  /// Optional. Immutable. The encryption details of the source data stored by the service.
  final EncryptionResponse3 encryption;

  /// Provides details on the state of the Source in case of an error.
  final StatusResponse31 error;

  /// The labels of the source.
  final Map<String, String> labels;

  /// The Source name.
  final String name;

  /// The update time timestamp.
  final String updateTime;

  /// Vmware type source details.
  final VmwareSourceDetailsResponse2 vmware;

  GetSourceResult6({
    required this.aws,
    required this.azure,
    required this.createTime,
    required this.description,
    required this.encryption,
    required this.error,
    required this.labels,
    required this.name,
    required this.updateTime,
    required this.vmware,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['aws'] = aws.toMap();
    map['azure'] = azure.toMap();
    map['createTime'] = createTime;
    map['description'] = description;
    map['encryption'] = encryption.toMap();
    map['error'] = error.toMap();
    map['labels'] = labels;
    map['name'] = name;
    map['updateTime'] = updateTime;
    map['vmware'] = vmware.toMap();
    return map;
  }

  factory GetSourceResult6.fromMap(Map<String, dynamic> map) {
    return GetSourceResult6(
      aws: AwsSourceDetailsResponse2.fromMap(
          (map['aws'] as Map).cast<String, dynamic>()),
      azure: AzureSourceDetailsResponse2.fromMap(
          (map['azure'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      encryption: EncryptionResponse3.fromMap(
          (map['encryption'] as Map).cast<String, dynamic>()),
      error: StatusResponse31.fromMap(
          (map['error'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
      vmware: VmwareSourceDetailsResponse2.fromMap(
          (map['vmware'] as Map).cast<String, dynamic>()),
    );
  }
}
