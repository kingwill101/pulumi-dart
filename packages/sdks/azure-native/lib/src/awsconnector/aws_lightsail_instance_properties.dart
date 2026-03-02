// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'add_on.dart';
import 'hardware.dart';
import 'location.dart';
import 'networking.dart';
import 'state.dart';
import 'tag.dart';

/// Definition of awsLightsailInstance
class AwsLightsailInstanceProperties {
  /// An array of objects representing the add-ons to enable for the new instance.
  final pulumi.Input<List<AddOn>>? addOns;
  /// The Availability Zone in which to create your instance. Use the following format: us-east-2a (case sensitive). Be sure to add the include Availability Zones parameter to your request.
  final pulumi.Input<String>? availabilityZone;
  /// The ID for a virtual private server image (e.g., app_wordpress_4_4 or app_lamp_7_0 ). Use the get blueprints operation to return a list of available images (or blueprints ).
  final pulumi.Input<String>? blueprintId;
  /// The bundle of specification information for your virtual private server (or instance ), including the pricing plan (e.g., micro_1_0 ).
  final pulumi.Input<String>? bundleId;
  /// Hardware of the Instance.
  final pulumi.Input<Hardware>? hardware;
  /// Property instanceArn
  final pulumi.Input<String>? instanceArn;
  /// The names to use for your new Lightsail instance.
  final pulumi.Input<String>? instanceName;
  /// Is the IP Address of the Instance is the static IP
  final pulumi.Input<bool>? isStaticIp;
  /// The name of your key pair.
  final pulumi.Input<String>? keyPairName;
  /// Location of a resource.
  final pulumi.Input<Location>? location;
  /// Networking of the Instance.
  final pulumi.Input<Networking>? networking;
  /// Private IP Address of the Instance
  final pulumi.Input<String>? privateIpAddress;
  /// Public IP Address of the Instance
  final pulumi.Input<String>? publicIpAddress;
  /// Resource type of Lightsail instance.
  final pulumi.Input<String>? resourceType;
  /// SSH Key Name of the  Lightsail instance.
  final pulumi.Input<String>? sshKeyName;
  /// Current State of the Instance.
  final pulumi.Input<State>? state;
  /// Support code to help identify any issues
  final pulumi.Input<String>? supportCode;
  /// An array of key-value pairs to apply to this resource.
  final pulumi.Input<List<Tag>>? tags;
  /// A launch script you can create that configures a server with additional user data. For example, you might want to run apt-get -y update.
  final pulumi.Input<String>? userData;
  /// Username of the  Lightsail instance.
  final pulumi.Input<String>? userName;

  /// Creates a new [AwsLightsailInstanceProperties].
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
  AwsLightsailInstanceProperties({
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
      'addOns': ?pulumi.Input.mapOptionalInputValue<List<AddOn>, List<Map<String, dynamic>>>(addOns, (value) => pulumi.Input.encodeList<AddOn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'availabilityZone': ?availabilityZone,
      'blueprintId': ?blueprintId,
      'bundleId': ?bundleId,
      'hardware': ?pulumi.Input.mapOptionalInputValue<Hardware, Map<String, dynamic>>(hardware, (value) => value.toMap()),
      'instanceArn': ?instanceArn,
      'instanceName': ?instanceName,
      'isStaticIp': ?isStaticIp,
      'keyPairName': ?keyPairName,
      'location': ?pulumi.Input.mapOptionalInputValue<Location, Map<String, dynamic>>(location, (value) => value.toMap()),
      'networking': ?pulumi.Input.mapOptionalInputValue<Networking, Map<String, dynamic>>(networking, (value) => value.toMap()),
      'privateIpAddress': ?privateIpAddress,
      'publicIpAddress': ?publicIpAddress,
      'resourceType': ?resourceType,
      'sshKeyName': ?sshKeyName,
      'state': ?pulumi.Input.mapOptionalInputValue<State, Map<String, dynamic>>(state, (value) => value.toMap()),
      'supportCode': ?supportCode,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<Tag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<Tag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userData': ?userData,
      'userName': ?userName,
    };
  }

  factory AwsLightsailInstanceProperties.fromMap(Map<String, dynamic> map) {
    return AwsLightsailInstanceProperties(
      addOns: map['addOns'] == null ? null : (pulumi.Input.decodeList<AddOn>(map['addOns']!, (value) => AddOn.fromMap((value as Map).cast<String, dynamic>()))).input(),
      availabilityZone: map['availabilityZone'] == null ? null : (map['availabilityZone']! as String).input(),
      blueprintId: map['blueprintId'] == null ? null : (map['blueprintId']! as String).input(),
      bundleId: map['bundleId'] == null ? null : (map['bundleId']! as String).input(),
      hardware: map['hardware'] == null ? null : (Hardware.fromMap((map['hardware']! as Map).cast<String, dynamic>())).input(),
      instanceArn: map['instanceArn'] == null ? null : (map['instanceArn']! as String).input(),
      instanceName: map['instanceName'] == null ? null : (map['instanceName']! as String).input(),
      isStaticIp: map['isStaticIp'] == null ? null : (map['isStaticIp']! as bool).input(),
      keyPairName: map['keyPairName'] == null ? null : (map['keyPairName']! as String).input(),
      location: map['location'] == null ? null : (Location.fromMap((map['location']! as Map).cast<String, dynamic>())).input(),
      networking: map['networking'] == null ? null : (Networking.fromMap((map['networking']! as Map).cast<String, dynamic>())).input(),
      privateIpAddress: map['privateIpAddress'] == null ? null : (map['privateIpAddress']! as String).input(),
      publicIpAddress: map['publicIpAddress'] == null ? null : (map['publicIpAddress']! as String).input(),
      resourceType: map['resourceType'] == null ? null : (map['resourceType']! as String).input(),
      sshKeyName: map['sshKeyName'] == null ? null : (map['sshKeyName']! as String).input(),
      state: map['state'] == null ? null : (State.fromMap((map['state']! as Map).cast<String, dynamic>())).input(),
      supportCode: map['supportCode'] == null ? null : (map['supportCode']! as String).input(),
      tags: map['tags'] == null ? null : (pulumi.Input.decodeList<Tag>(map['tags']!, (value) => Tag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      userData: map['userData'] == null ? null : (map['userData']! as String).input(),
      userName: map['userName'] == null ? null : (map['userName']! as String).input(),
    );
  }
}

