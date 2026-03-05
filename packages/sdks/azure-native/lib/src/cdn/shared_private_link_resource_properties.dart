// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_reference.dart';
import 'shared_private_link_resource_status.dart';

/// Describes the properties of an existing Shared Private Link Resource to use when connecting to a private origin.
class SharedPrivateLinkResourceProperties {
  /// The group id from the provider of resource the shared private link resource is for.
  final pulumi.Input<String>? groupId;
  /// The resource id of the resource the shared private link resource is for.
  final pulumi.Input<ResourceReference>? privateLink;
  /// The location of the shared private link resource
  final pulumi.Input<String>? privateLinkLocation;
  /// The request message for requesting approval of the shared private link resource.
  final pulumi.Input<String>? requestMessage;
  /// Status of the shared private link resource. Can be Pending, Approved, Rejected, Disconnected, or Timeout.
  final pulumi.Input<SharedPrivateLinkResourceStatus>? status;

  /// Creates a new [SharedPrivateLinkResourceProperties].
  /// [groupId] The group id from the provider of resource the shared private link resource is for.
  /// [privateLink] The resource id of the resource the shared private link resource is for.
  /// [privateLinkLocation] The location of the shared private link resource
  /// [requestMessage] The request message for requesting approval of the shared private link resource.
  /// [status] Status of the shared private link resource. Can be Pending, Approved, Rejected, Disconnected, or Timeout.
  SharedPrivateLinkResourceProperties({
    this.groupId,
    this.privateLink,
    this.privateLinkLocation,
    this.requestMessage,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': ?groupId,
      'privateLink': ?pulumi.Input.mapOptionalInputValue<ResourceReference, Map<String, dynamic>>(privateLink, (value) => value.toMap()),
      'privateLinkLocation': ?privateLinkLocation,
      'requestMessage': ?requestMessage,
      'status': ?pulumi.Input.mapOptionalInputValue<SharedPrivateLinkResourceStatus, String>(status, (value) => value.wireValue),
    };
  }

  factory SharedPrivateLinkResourceProperties.fromMap(Map<String, dynamic> map) {
    return SharedPrivateLinkResourceProperties(
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateLink: (() { final guardedValue = map['privateLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateLinkLocation: (() { final guardedValue = map['privateLinkLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestMessage: (() { final guardedValue = map['requestMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SharedPrivateLinkResourceStatus.fromValue(guardedValue as String)); })(),
    );
  }
}

