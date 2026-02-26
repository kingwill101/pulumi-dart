// ignore_for_file: unused_element, unnecessary_cast

import 'aws_source_details_response.dart';
import 'azure_source_details_response.dart';
import 'encryption_response2.dart';
import 'vmware_source_details_response.dart';

/// Result data returned by getSource.
class GetSourceResult5 {
  /// AWS type source details.
  final AwsSourceDetailsResponse aws;

  /// Azure type source details.
  final AzureSourceDetailsResponse azure;

  /// The create time timestamp.
  final String createTime;

  /// User-provided description of the source.
  final String description;

  /// Optional. Immutable. The encryption details of the source data stored by the service.
  final EncryptionResponse2 encryption;

  /// The labels of the source.
  final Map<String, String> labels;

  /// The Source name.
  final String name;

  /// The update time timestamp.
  final String updateTime;

  /// Vmware type source details.
  final VmwareSourceDetailsResponse vmware;

  GetSourceResult5({
    required this.aws,
    required this.azure,
    required this.createTime,
    required this.description,
    required this.encryption,
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
    map['labels'] = labels;
    map['name'] = name;
    map['updateTime'] = updateTime;
    map['vmware'] = vmware.toMap();
    return map;
  }

  factory GetSourceResult5.fromMap(Map<String, dynamic> map) {
    return GetSourceResult5(
      aws: AwsSourceDetailsResponse.fromMap(
          (map['aws'] as Map).cast<String, dynamic>()),
      azure: AzureSourceDetailsResponse.fromMap(
          (map['azure'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      encryption: EncryptionResponse2.fromMap(
          (map['encryption'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
      vmware: VmwareSourceDetailsResponse.fromMap(
          (map['vmware'] as Map).cast<String, dynamic>()),
    );
  }
}
