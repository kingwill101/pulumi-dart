// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Collector agent SPN details class.
class CollectorAgentSpnPropertiesBaseResponse {
  /// Gets the AAD application id.
  final pulumi.Input<String>? applicationId;
  /// Gets the AAD audience url.
  final pulumi.Input<String>? audience;
  /// Gets the AAD authority endpoint.
  final pulumi.Input<String>? authority;
  /// Gets the object id of the AAD application.
  final pulumi.Input<String>? objectId;
  /// Gets the tenant id of the AAD application.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [CollectorAgentSpnPropertiesBaseResponse].
  /// [applicationId] Gets the AAD application id.
  /// [audience] Gets the AAD audience url.
  /// [authority] Gets the AAD authority endpoint.
  /// [objectId] Gets the object id of the AAD application.
  /// [tenantId] Gets the tenant id of the AAD application.
  const CollectorAgentSpnPropertiesBaseResponse({
    this.applicationId,
    this.audience,
    this.authority,
    this.objectId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'audience': ?audience,
      'authority': ?authority,
      'objectId': ?objectId,
      'tenantId': ?tenantId,
    };
  }

  factory CollectorAgentSpnPropertiesBaseResponse.fromMap(Map<String, dynamic> map) {
    return CollectorAgentSpnPropertiesBaseResponse(
      applicationId: (() { final guardedValue = map['applicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      audience: (() { final guardedValue = map['audience']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authority: (() { final guardedValue = map['authority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

