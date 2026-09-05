// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCloudExadataInfrastructuresCloudExadataInfrastructure {
  /// ARN for the Exadata infrastructure.
  final pulumi.Input<String> arn;
  /// Display name of the Exadata infrastructure.
  final pulumi.Input<String> displayName;
  /// Unique identifier of the Exadata infrastructure.
  final pulumi.Input<String> id;
  /// Name of the OCI resource anchor for the Exadata infrastructure.
  final pulumi.Input<String> ociResourceAnchorName;
  /// HTTPS link to the Exadata infrastructure in OCI.
  final pulumi.Input<String> ociUrl;
  /// OCID of the Exadata infrastructure in OCI.
  final pulumi.Input<String> ocid;

  /// Creates a new [GetCloudExadataInfrastructuresCloudExadataInfrastructure].
  /// [arn] ARN for the Exadata infrastructure.
  /// [displayName] Display name of the Exadata infrastructure.
  /// [id] Unique identifier of the Exadata infrastructure.
  /// [ociResourceAnchorName] Name of the OCI resource anchor for the Exadata infrastructure.
  /// [ociUrl] HTTPS link to the Exadata infrastructure in OCI.
  /// [ocid] OCID of the Exadata infrastructure in OCI.
  const GetCloudExadataInfrastructuresCloudExadataInfrastructure({
    required this.arn,
    required this.displayName,
    required this.id,
    required this.ociResourceAnchorName,
    required this.ociUrl,
    required this.ocid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'displayName': displayName,
      'id': id,
      'ociResourceAnchorName': ociResourceAnchorName,
      'ociUrl': ociUrl,
      'ocid': ocid,
    };
  }

  factory GetCloudExadataInfrastructuresCloudExadataInfrastructure.fromMap(Map<String, dynamic> map) {
    return GetCloudExadataInfrastructuresCloudExadataInfrastructure(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      ociResourceAnchorName: pulumi.Input.fromValue(map['ociResourceAnchorName'] as String),
      ociUrl: pulumi.Input.fromValue(map['ociUrl'] as String),
      ocid: pulumi.Input.fromValue(map['ocid'] as String),
    );
  }
}
