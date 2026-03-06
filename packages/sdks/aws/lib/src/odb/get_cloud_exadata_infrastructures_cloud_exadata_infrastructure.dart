// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCloudExadataInfrastructuresCloudExadataInfrastructure {
  /// The Amazon Resource Name (ARN) for the Exadata infrastructure.
  final pulumi.Input<String> arn;
  /// The display name of the Exadata infrastructure.
  final pulumi.Input<String> displayName;
  /// The unique identifier of the Exadata infrastructure.
  final pulumi.Input<String> id;
  /// The name of the OCI resource anchor for the Exadata infrastructure.
  final pulumi.Input<String> ociResourceAnchorName;
  /// The HTTPS link to the Exadata infrastructure in OCI.
  final pulumi.Input<String> ociUrl;
  /// The OCID of the Exadata infrastructure in OCI.
  final pulumi.Input<String> ocid;

  /// Creates a new [GetCloudExadataInfrastructuresCloudExadataInfrastructure].
  /// [arn] The Amazon Resource Name (ARN) for the Exadata infrastructure.
  /// [displayName] The display name of the Exadata infrastructure.
  /// [id] The unique identifier of the Exadata infrastructure.
  /// [ociResourceAnchorName] The name of the OCI resource anchor for the Exadata infrastructure.
  /// [ociUrl] The HTTPS link to the Exadata infrastructure in OCI.
  /// [ocid] The OCID of the Exadata infrastructure in OCI.
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

