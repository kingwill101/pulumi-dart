// ignore_for_file: unused_element, unnecessary_cast

import 'resource_reference_response.dart';

/// Describes the properties of an existing Shared Private Link Resource to use when connecting to a private origin.
class SharedPrivateLinkResourcePropertiesResponse {
  /// The group id from the provider of resource the shared private link resource is for.
  final String? groupId;
  /// The resource id of the resource the shared private link resource is for.
  final ResourceReferenceResponse? privateLink;
  /// The location of the shared private link resource
  final String? privateLinkLocation;
  /// The request message for requesting approval of the shared private link resource.
  final String? requestMessage;
  /// Status of the shared private link resource. Can be Pending, Approved, Rejected, Disconnected, or Timeout.
  final String? status;

  /// Creates a new [SharedPrivateLinkResourcePropertiesResponse].
  /// [groupId] The group id from the provider of resource the shared private link resource is for.
  /// [privateLink] The resource id of the resource the shared private link resource is for.
  /// [privateLinkLocation] The location of the shared private link resource
  /// [requestMessage] The request message for requesting approval of the shared private link resource.
  /// [status] Status of the shared private link resource. Can be Pending, Approved, Rejected, Disconnected, or Timeout.
  SharedPrivateLinkResourcePropertiesResponse({
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
      'status': ?status,
    };
  }

  factory SharedPrivateLinkResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SharedPrivateLinkResourcePropertiesResponse(
      groupId: map['groupId'] == null ? null : map['groupId'] as String,
      privateLink: map['privateLink'] == null ? null : ResourceReferenceResponse.fromMap((map['privateLink'] as Map).cast<String, dynamic>()),
      privateLinkLocation: map['privateLinkLocation'] == null ? null : map['privateLinkLocation'] as String,
      requestMessage: map['requestMessage'] == null ? null : map['requestMessage'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

