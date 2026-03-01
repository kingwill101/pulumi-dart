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
  final List<AddOnResponse>? addOns;
  /// The Availability Zone in which to create your instance. Use the following format: us-east-2a (case sensitive). Be sure to add the include Availability Zones parameter to your request.
  final String? availabilityZone;
  /// The ID for a virtual private server image (e.g., app_wordpress_4_4 or app_lamp_7_0 ). Use the get blueprints operation to return a list of available images (or blueprints ).
  final String? blueprintId;
  /// The bundle of specification information for your virtual private server (or instance ), including the pricing plan (e.g., micro_1_0 ).
  final String? bundleId;
  /// Hardware of the Instance.
  final HardwareResponse? hardware;
  /// Property instanceArn
  final String? instanceArn;
  /// The names to use for your new Lightsail instance.
  final String? instanceName;
  /// Is the IP Address of the Instance is the static IP
  final bool? isStaticIp;
  /// The name of your key pair.
  final String? keyPairName;
  /// Location of a resource.
  final LocationResponse? location;
  /// Networking of the Instance.
  final NetworkingResponse? networking;
  /// Private IP Address of the Instance
  final String? privateIpAddress;
  /// Public IP Address of the Instance
  final String? publicIpAddress;
  /// Resource type of Lightsail instance.
  final String? resourceType;
  /// SSH Key Name of the  Lightsail instance.
  final String? sshKeyName;
  /// Current State of the Instance.
  final StateResponse? state;
  /// Support code to help identify any issues
  final String? supportCode;
  /// An array of key-value pairs to apply to this resource.
  final List<TagResponse>? tags;
  /// A launch script you can create that configures a server with additional user data. For example, you might want to run apt-get -y update.
  final String? userData;
  /// Username of the  Lightsail instance.
  final String? userName;

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
  AwsLightsailInstancePropertiesResponse({
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
      'addOns': ?addOns == null ? null : pulumi.Input.encodeList<AddOnResponse, Map<String, dynamic>>(addOns!, (value) => value.toMap()),
      'availabilityZone': ?availabilityZone,
      'blueprintId': ?blueprintId,
      'bundleId': ?bundleId,
      'hardware': ?hardware == null ? null : hardware!.toMap(),
      'instanceArn': ?instanceArn,
      'instanceName': ?instanceName,
      'isStaticIp': ?isStaticIp,
      'keyPairName': ?keyPairName,
      'location': ?location == null ? null : location!.toMap(),
      'networking': ?networking == null ? null : networking!.toMap(),
      'privateIpAddress': ?privateIpAddress,
      'publicIpAddress': ?publicIpAddress,
      'resourceType': ?resourceType,
      'sshKeyName': ?sshKeyName,
      'state': ?state == null ? null : state!.toMap(),
      'supportCode': ?supportCode,
      'tags': ?tags == null ? null : pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(tags!, (value) => value.toMap()),
      'userData': ?userData,
      'userName': ?userName,
    };
  }

  factory AwsLightsailInstancePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsLightsailInstancePropertiesResponse(
      addOns: map['addOns'] == null ? null : pulumi.Input.decodeList<AddOnResponse>(map['addOns'], (value) => AddOnResponse.fromMap((value as Map).cast<String, dynamic>())),
      availabilityZone: map['availabilityZone'] == null ? null : map['availabilityZone'] as String,
      blueprintId: map['blueprintId'] == null ? null : map['blueprintId'] as String,
      bundleId: map['bundleId'] == null ? null : map['bundleId'] as String,
      hardware: map['hardware'] == null ? null : HardwareResponse.fromMap((map['hardware'] as Map).cast<String, dynamic>()),
      instanceArn: map['instanceArn'] == null ? null : map['instanceArn'] as String,
      instanceName: map['instanceName'] == null ? null : map['instanceName'] as String,
      isStaticIp: map['isStaticIp'] == null ? null : map['isStaticIp'] as bool,
      keyPairName: map['keyPairName'] == null ? null : map['keyPairName'] as String,
      location: map['location'] == null ? null : LocationResponse.fromMap((map['location'] as Map).cast<String, dynamic>()),
      networking: map['networking'] == null ? null : NetworkingResponse.fromMap((map['networking'] as Map).cast<String, dynamic>()),
      privateIpAddress: map['privateIpAddress'] == null ? null : map['privateIpAddress'] as String,
      publicIpAddress: map['publicIpAddress'] == null ? null : map['publicIpAddress'] as String,
      resourceType: map['resourceType'] == null ? null : map['resourceType'] as String,
      sshKeyName: map['sshKeyName'] == null ? null : map['sshKeyName'] as String,
      state: map['state'] == null ? null : StateResponse.fromMap((map['state'] as Map).cast<String, dynamic>()),
      supportCode: map['supportCode'] == null ? null : map['supportCode'] as String,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<TagResponse>(map['tags'], (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>())),
      userData: map['userData'] == null ? null : map['userData'] as String,
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}

