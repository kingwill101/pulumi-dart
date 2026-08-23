// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identity model.
class IdentityModel {
  /// Gets or sets the authority of the SPN with which MigrateAgent communicates to service.
  final pulumi.Input<String>? aadAuthority;
  /// Gets or sets the client/application Id of the SPN with which MigrateAgent communicates to
  /// service.
  final pulumi.Input<String>? applicationId;
  /// Gets or sets the audience of the SPN with which MigrateAgent communicates to service.
  final pulumi.Input<String>? audience;
  /// Gets or sets the object Id of the SPN with which MigrateAgent communicates to service.
  final pulumi.Input<String>? objectId;
  /// Gets or sets the tenant Id of the SPN with which MigrateAgent communicates to service.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [IdentityModel].
  /// [aadAuthority] Gets or sets the authority of the SPN with which MigrateAgent communicates to service.
  /// [applicationId] Gets or sets the client/application Id of the SPN with which MigrateAgent communicates to
  /// [audience] Gets or sets the audience of the SPN with which MigrateAgent communicates to service.
  /// [objectId] Gets or sets the object Id of the SPN with which MigrateAgent communicates to service.
  /// [tenantId] Gets or sets the tenant Id of the SPN with which MigrateAgent communicates to service.
  const IdentityModel({
    this.aadAuthority,
    this.applicationId,
    this.audience,
    this.objectId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadAuthority': ?aadAuthority,
      'applicationId': ?applicationId,
      'audience': ?audience,
      'objectId': ?objectId,
      'tenantId': ?tenantId,
    };
  }

  factory IdentityModel.fromMap(Map<String, dynamic> map) {
    return IdentityModel(
      aadAuthority: (() { final guardedValue = map['aadAuthority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationId: (() { final guardedValue = map['applicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      audience: (() { final guardedValue = map['audience']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
