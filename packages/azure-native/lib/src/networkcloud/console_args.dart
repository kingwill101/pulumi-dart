// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';
import 'ssh_public_key.dart';

/// {@template pulumi_networkcloud_console_args_doc}
/// The set of arguments for Console.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_console_args_doc}
class ConsoleArgs {
  /// The name of the virtual machine console.
  final pulumi.Input<String>? consoleName;
  /// The indicator of whether the console access is enabled.
  final pulumi.Input<String> enabled;
  /// The date and time after which the key will be disallowed access.
  final pulumi.Input<String>? expiration;
  /// The extended location of the cluster manager associated with the cluster this virtual machine is created on.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The SSH public key that will be provisioned for user access. The user is expected to have the corresponding SSH private key for logging in.
  final pulumi.Input<SshPublicKey> sshPublicKey;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the virtual machine.
  final pulumi.Input<String> virtualMachineName;

  /// Creates a new [ConsoleArgs].
  /// [consoleName] The name of the virtual machine console.
  /// [enabled] The indicator of whether the console access is enabled.
  /// [expiration] The date and time after which the key will be disallowed access.
  /// [extendedLocation] The extended location of the cluster manager associated with the cluster this virtual machine is created on.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sshPublicKey] The SSH public key that will be provisioned for user access. The user is expected to have the corresponding SSH private key for logging in.
  /// [tags] Resource tags.
  /// [virtualMachineName] The name of the virtual machine.
  ConsoleArgs({
    String? consoleName,
    required String enabled,
    String? expiration,
    required ExtendedLocation extendedLocation,
    String? location,
    required String resourceGroupName,
    required SshPublicKey sshPublicKey,
    Map<String, String>? tags,
    required String virtualMachineName,
  }) :
      consoleName = pulumi.Input.asOptionalInput<String>(consoleName),
      enabled = pulumi.Input.asInput<String>(enabled),
      expiration = pulumi.Input.asOptionalInput<String>(expiration),
      extendedLocation = pulumi.Input.asInput<ExtendedLocation>(extendedLocation),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sshPublicKey = pulumi.Input.asInput<SshPublicKey>(sshPublicKey),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualMachineName = pulumi.Input.asInput<String>(virtualMachineName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consoleName': ?consoleName,
      'enabled': enabled,
      'expiration': ?expiration,
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sshPublicKey': pulumi.Input.mapInputValue<SshPublicKey, Map<String, dynamic>>(sshPublicKey, (value) => value.toMap()),
      'tags': ?tags,
      'virtualMachineName': virtualMachineName,
    };
  }

  factory ConsoleArgs.fromMap(Map<String, dynamic> map) {
    return ConsoleArgs(
      consoleName: map['consoleName'] == null ? null : map['consoleName'] as String,
      enabled: map['enabled'] as String,
      expiration: map['expiration'] == null ? null : map['expiration'] as String,
      extendedLocation: ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sshPublicKey: SshPublicKey.fromMap((map['sshPublicKey'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      virtualMachineName: map['virtualMachineName'] as String,
    );
  }
}

