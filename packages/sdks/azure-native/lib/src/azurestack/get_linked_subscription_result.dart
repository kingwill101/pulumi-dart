// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getLinkedSubscription.
class GetLinkedSubscriptionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The status of the remote management connection of the Azure Stack device.
  final String? deviceConnectionStatus;
  /// The identifier of the Azure Stack device for remote management.
  final String? deviceId;
  /// The connection state of the Azure Stack device.
  final String? deviceLinkState;
  /// The object identifier associated with the Azure Stack device connecting to Azure.
  final String? deviceObjectId;
  /// The entity tag used for optimistic concurrency when modifying the resource.
  final String? etag;
  /// ID of the resource.
  final String? id;
  /// The kind of the resource.
  final String? kind;
  /// The last remote management connection time for the Azure Stack device connected to the linked subscription resource.
  final String? lastConnectedTime;
  /// The identifier associated with the device subscription.
  final String? linkedSubscriptionId;
  /// Location of the resource.
  final String? location;
  /// Name of the resource.
  final String? name;
  /// The identifier associated with the device registration.
  final String? registrationResourceId;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// Custom tags for the resource.
  final Map<String, String>? tags;
  /// Type of Resource.
  final String? type;

  /// Creates a new [GetLinkedSubscriptionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [deviceConnectionStatus] The status of the remote management connection of the Azure Stack device.
  /// [deviceId] The identifier of the Azure Stack device for remote management.
  /// [deviceLinkState] The connection state of the Azure Stack device.
  /// [deviceObjectId] The object identifier associated with the Azure Stack device connecting to Azure.
  /// [etag] The entity tag used for optimistic concurrency when modifying the resource.
  /// [id] ID of the resource.
  /// [kind] The kind of the resource.
  /// [lastConnectedTime] The last remote management connection time for the Azure Stack device connected to the linked subscription resource.
  /// [linkedSubscriptionId] The identifier associated with the device subscription.
  /// [location] Location of the resource.
  /// [name] Name of the resource.
  /// [registrationResourceId] The identifier associated with the device registration.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Custom tags for the resource.
  /// [type] Type of Resource.
  const GetLinkedSubscriptionResult({
    this.azureApiVersion,
    this.deviceConnectionStatus,
    this.deviceId,
    this.deviceLinkState,
    this.deviceObjectId,
    this.etag,
    this.id,
    this.kind,
    this.lastConnectedTime,
    this.linkedSubscriptionId,
    this.location,
    this.name,
    this.registrationResourceId,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'deviceConnectionStatus': ?deviceConnectionStatus,
      'deviceId': ?deviceId,
      'deviceLinkState': ?deviceLinkState,
      'deviceObjectId': ?deviceObjectId,
      'etag': ?etag,
      'id': ?id,
      'kind': ?kind,
      'lastConnectedTime': ?lastConnectedTime,
      'linkedSubscriptionId': ?linkedSubscriptionId,
      'location': ?location,
      'name': ?name,
      'registrationResourceId': ?registrationResourceId,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetLinkedSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetLinkedSubscriptionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deviceConnectionStatus: (() { final guardedValue = map['deviceConnectionStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deviceId: (() { final guardedValue = map['deviceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deviceLinkState: (() { final guardedValue = map['deviceLinkState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deviceObjectId: (() { final guardedValue = map['deviceObjectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastConnectedTime: (() { final guardedValue = map['lastConnectedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      linkedSubscriptionId: (() { final guardedValue = map['linkedSubscriptionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      registrationResourceId: (() { final guardedValue = map['registrationResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
