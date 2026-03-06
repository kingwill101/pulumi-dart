// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identity model.
class IdentityModel {
  /// Gets or sets the authority of the SPN with which fabric agent communicates to service.
  final pulumi.Input<String> aadAuthority;
  /// Gets or sets the client/application Id of the SPN with which fabric agent communicates to service.
  final pulumi.Input<String> applicationId;
  /// Gets or sets the audience of the SPN with which fabric agent communicates to service.
  final pulumi.Input<String> audience;
  /// Gets or sets the object Id of the SPN with which fabric agent communicates to service.
  final pulumi.Input<String> objectId;
  /// Gets or sets the tenant Id of the SPN with which fabric agent communicates to service.
  final pulumi.Input<String> tenantId;

  /// Creates a new [IdentityModel].
  /// [aadAuthority] Gets or sets the authority of the SPN with which fabric agent communicates to service.
  /// [applicationId] Gets or sets the client/application Id of the SPN with which fabric agent communicates to service.
  /// [audience] Gets or sets the audience of the SPN with which fabric agent communicates to service.
  /// [objectId] Gets or sets the object Id of the SPN with which fabric agent communicates to service.
  /// [tenantId] Gets or sets the tenant Id of the SPN with which fabric agent communicates to service.
  const IdentityModel({
    required this.aadAuthority,
    required this.applicationId,
    required this.audience,
    required this.objectId,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadAuthority': aadAuthority,
      'applicationId': applicationId,
      'audience': audience,
      'objectId': objectId,
      'tenantId': tenantId,
    };
  }

  factory IdentityModel.fromMap(Map<String, dynamic> map) {
    return IdentityModel(
      aadAuthority: pulumi.Input.fromValue(map['aadAuthority'] as String),
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      audience: pulumi.Input.fromValue(map['audience'] as String),
      objectId: pulumi.Input.fromValue(map['objectId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}

