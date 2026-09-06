// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'throttling_policy_response.dart';

/// Result data returned by getApplicationGroup.
class GetApplicationGroupResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The Unique identifier for application group.Supports SAS(SASKeyName=KeyName) or AAD(AADAppID=Guid)
  final String? clientAppGroupIdentifier;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Determines if Application Group is allowed to create connection with namespace or not. Once the isEnabled is set to false, all the existing connections of application group gets dropped and no new connections will be allowed
  final bool? isEnabled;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// List of group policies that define the behavior of application group. The policies can support resource governance scenarios such as limiting ingress or egress traffic.
  final List<ThrottlingPolicyResponse>? policies;
  /// The system meta data relating to this resource.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"
  final String? type;

  /// Creates a new [GetApplicationGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clientAppGroupIdentifier] The Unique identifier for application group.Supports SAS(SASKeyName=KeyName) or AAD(AADAppID=Guid)
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [isEnabled] Determines if Application Group is allowed to create connection with namespace or not. Once the isEnabled is set to false, all the existing connections of application group gets dropped and no new connections will be allowed
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [policies] List of group policies that define the behavior of application group. The policies can support resource governance scenarios such as limiting ingress or egress traffic.
  /// [systemData] The system meta data relating to this resource.
  /// [type] The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"
  const GetApplicationGroupResult({
    this.azureApiVersion,
    this.clientAppGroupIdentifier,
    this.id,
    this.isEnabled,
    this.location,
    this.name,
    this.policies,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'clientAppGroupIdentifier': ?clientAppGroupIdentifier,
      'id': ?id,
      'isEnabled': ?isEnabled,
      'location': ?location,
      'name': ?name,
      'policies': ?(() { final guardedValue = policies; if (guardedValue == null) return null; return pulumi.Input.encodeList<ThrottlingPolicyResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetApplicationGroupResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationGroupResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientAppGroupIdentifier: (() { final guardedValue = map['clientAppGroupIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isEnabled: (() { final guardedValue = map['isEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ThrottlingPolicyResponse>(guardedValue, (value) => ThrottlingPolicyResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
