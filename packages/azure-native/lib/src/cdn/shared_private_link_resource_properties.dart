// ignore_for_file: unused_element, unnecessary_cast

import 'resource_reference.dart';
import 'shared_private_link_resource_status.dart';

/// Describes the properties of an existing Shared Private Link Resource to use when connecting to a private origin.
class SharedPrivateLinkResourceProperties {
  /// The group id from the provider of resource the shared private link resource is for.
  final String? groupId;
  /// The resource id of the resource the shared private link resource is for.
  final ResourceReference? privateLink;
  /// The location of the shared private link resource
  final String? privateLinkLocation;
  /// The request message for requesting approval of the shared private link resource.
  final String? requestMessage;
  /// Status of the shared private link resource. Can be Pending, Approved, Rejected, Disconnected, or Timeout.
  final SharedPrivateLinkResourceStatus? status;

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
      'privateLink': ?privateLink == null ? null : privateLink!.toMap(),
      'privateLinkLocation': ?privateLinkLocation,
      'requestMessage': ?requestMessage,
      'status': ?status == null ? null : status!.value,
    };
  }

  factory SharedPrivateLinkResourceProperties.fromMap(Map<String, dynamic> map) {
    return SharedPrivateLinkResourceProperties(
      groupId: map['groupId'] == null ? null : map['groupId'] as String,
      privateLink: map['privateLink'] == null ? null : ResourceReference.fromMap((map['privateLink'] as Map).cast<String, dynamic>()),
      privateLinkLocation: map['privateLinkLocation'] == null ? null : map['privateLinkLocation'] as String,
      requestMessage: map['requestMessage'] == null ? null : map['requestMessage'] as String,
      status: map['status'] == null ? null : SharedPrivateLinkResourceStatus.fromValue(map['status'] as String),
    );
  }
}

