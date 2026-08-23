// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'add_on_response.dart';
import 'hardware_response.dart';
import 'location_response.dart';
import 'networking_response.dart';
import 'state_response.dart';
import 'tag_response.dart';

/// Definition of awsLightsailInstance
class AwsLightsailInstancePropertiesResponse {
  /// An array of objects representing the add-ons to enable for the new instance.
  final pulumi.Input<List<AddOnResponse>>? addOns;
  /// The Availability Zone in which to create your instance. Use the following format: us-east-2a (case sensitive). Be sure to add the include Availability Zones parameter to your request.
  final pulumi.Input<String>? availabilityZone;
  /// The ID for a virtual private server image (e.g., app_wordpress_4_4 or app_lamp_7_0 ). Use the get blueprints operation to return a list of available images (or blueprints ).
  final pulumi.Input<String>? blueprintId;
  /// The bundle of specification information for your virtual private server (or instance ), including the pricing plan (e.g., micro_1_0 ).
  final pulumi.Input<String>? bundleId;
  /// Hardware of the Instance.
  final pulumi.Input<HardwareResponse>? hardware;
  /// Property instanceArn
  final pulumi.Input<String>? instanceArn;
  /// The names to use for your new Lightsail instance.
  final pulumi.Input<String>? instanceName;
  /// Is the IP Address of the Instance is the static IP
  final pulumi.Input<bool>? isStaticIp;
  /// The name of your key pair.
  final pulumi.Input<String>? keyPairName;
  /// Location of a resource.
  final pulumi.Input<LocationResponse>? location;
  /// Networking of the Instance.
  final pulumi.Input<NetworkingResponse>? networking;
  /// Private IP Address of the Instance
  final pulumi.Input<String>? privateIpAddress;
  /// Public IP Address of the Instance
  final pulumi.Input<String>? publicIpAddress;
  /// Resource type of Lightsail instance.
  final pulumi.Input<String>? resourceType;
  /// SSH Key Name of the  Lightsail instance.
  final pulumi.Input<String>? sshKeyName;
  /// Current State of the Instance.
  final pulumi.Input<StateResponse>? state;
  /// Support code to help identify any issues
  final pulumi.Input<String>? supportCode;
  /// An array of key-value pairs to apply to this resource.
  final pulumi.Input<List<TagResponse>>? tags;
  /// A launch script you can create that configures a server with additional user data. For example, you might want to run apt-get -y update.
  final pulumi.Input<String>? userData;
  /// Username of the  Lightsail instance.
  final pulumi.Input<String>? userName;

  /// Creates a new [AwsLightsailInstancePropertiesResponse].
  /// [addOns] An array of objects representing the add-ons to enable for the new instance.
  /// [availabilityZone] The Availability Zone in which to create your instance. Use the following format: us-east-2a (case sensitive). Be sure to add the include Availability Zones parameter to your request.
  /// [blueprintId] The ID for a virtual private server image (e.g., app_wordpress_4_4 or app_lamp_7_0 ). Use the get blueprints operation to return a list of available images (or blueprints ).
  /// [bundleId] The bundle of specification information for your virtual private server (or instance ), including the pricing plan (e.g., micro_1_0 ).
  /// [hardware] Hardware of the Instance.
  /// [instanceArn] Property instanceArn
  /// [instanceName] The names to use for your new Lightsail instance.
  /// [isStaticIp] Is the IP Address of the Instance is the static IP
  /// [keyPairName] The name of your key pair.
  /// [location] Location of a resource.
  /// [networking] Networking of the Instance.
  /// [privateIpAddress] Private IP Address of the Instance
  /// [publicIpAddress] Public IP Address of the Instance
  /// [resourceType] Resource type of Lightsail instance.
  /// [sshKeyName] SSH Key Name of the  Lightsail instance.
  /// [state] Current State of the Instance.
  /// [supportCode] Support code to help identify any issues
  /// [tags] An array of key-value pairs to apply to this resource.
  /// [userData] A launch script you can create that configures a server with additional user data. For example, you might want to run apt-get -y update.
  /// [userName] Username of the  Lightsail instance.
  const AwsLightsailInstancePropertiesResponse({
    this.addOns,
    this.availabilityZone,
    this.blueprintId,
    this.bundleId,
    this.hardware,
    this.instanceArn,
    this.instanceName,
    this.isStaticIp,
    this.keyPairName,
    this.location,
    this.networking,
    this.privateIpAddress,
    this.publicIpAddress,
    this.resourceType,
    this.sshKeyName,
    this.state,
    this.supportCode,
    this.tags,
    this.userData,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addOns': ?pulumi.Input.mapOptionalInputValue<List<AddOnResponse>, List<Map<String, dynamic>>>(addOns, (value) => pulumi.Input.encodeList<AddOnResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'availabilityZone': ?availabilityZone,
      'blueprintId': ?blueprintId,
      'bundleId': ?bundleId,
      'hardware': ?pulumi.Input.mapOptionalInputValue<HardwareResponse, Map<String, dynamic>>(hardware, (value) => value.toMap()),
      'instanceArn': ?instanceArn,
      'instanceName': ?instanceName,
      'isStaticIp': ?isStaticIp,
      'keyPairName': ?keyPairName,
      'location': ?pulumi.Input.mapOptionalInputValue<LocationResponse, Map<String, dynamic>>(location, (value) => value.toMap()),
      'networking': ?pulumi.Input.mapOptionalInputValue<NetworkingResponse, Map<String, dynamic>>(networking, (value) => value.toMap()),
      'privateIpAddress': ?privateIpAddress,
      'publicIpAddress': ?publicIpAddress,
      'resourceType': ?resourceType,
      'sshKeyName': ?sshKeyName,
      'state': ?pulumi.Input.mapOptionalInputValue<StateResponse, Map<String, dynamic>>(state, (value) => value.toMap()),
      'supportCode': ?supportCode,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<TagResponse>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userData': ?userData,
      'userName': ?userName,
    };
  }

  factory AwsLightsailInstancePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsLightsailInstancePropertiesResponse(
      addOns: (() { final guardedValue = map['addOns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AddOnResponse>(guardedValue, (value) => AddOnResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      blueprintId: (() { final guardedValue = map['blueprintId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bundleId: (() { final guardedValue = map['bundleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hardware: (() { final guardedValue = map['hardware']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HardwareResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceArn: (() { final guardedValue = map['instanceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceName: (() { final guardedValue = map['instanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isStaticIp: (() { final guardedValue = map['isStaticIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keyPairName: (() { final guardedValue = map['keyPairName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networking: (() { final guardedValue = map['networking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkingResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateIpAddress: (() { final guardedValue = map['privateIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIpAddress: (() { final guardedValue = map['publicIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sshKeyName: (() { final guardedValue = map['sshKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StateResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      supportCode: (() { final guardedValue = map['supportCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagResponse>(guardedValue, (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      userData: (() { final guardedValue = map['userData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
