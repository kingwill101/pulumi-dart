// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CollectorBodyAgentSpnPropertiesResponse {
  /// Application/client Id for the service principal with which the on-premise management/data plane components would communicate with our Azure services.
  final pulumi.Input<String>? applicationId;
  /// Intended audience for the service principal.
  final pulumi.Input<String>? audience;
  /// AAD Authority URL which was used to request the token for the service principal.
  final pulumi.Input<String>? authority;
  /// Object Id of the service principal with which the on-premise management/data plane components would communicate with our Azure services.
  final pulumi.Input<String>? objectId;
  /// Tenant Id for the service principal with which the on-premise management/data plane components would communicate with our Azure services.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [CollectorBodyAgentSpnPropertiesResponse].
  /// [applicationId] Application/client Id for the service principal with which the on-premise management/data plane components would communicate with our Azure services.
  /// [audience] Intended audience for the service principal.
  /// [authority] AAD Authority URL which was used to request the token for the service principal.
  /// [objectId] Object Id of the service principal with which the on-premise management/data plane components would communicate with our Azure services.
  /// [tenantId] Tenant Id for the service principal with which the on-premise management/data plane components would communicate with our Azure services.
  CollectorBodyAgentSpnPropertiesResponse({
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

  factory CollectorBodyAgentSpnPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CollectorBodyAgentSpnPropertiesResponse(
      applicationId: (() { final guardedValue = map['applicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      audience: (() { final guardedValue = map['audience']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authority: (() { final guardedValue = map['authority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

