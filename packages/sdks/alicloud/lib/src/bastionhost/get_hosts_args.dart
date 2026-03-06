// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bastionhost_get_hosts_get_hosts_args_doc}
/// Arguments for getHosts.
/// {@endtemplate}
/// {@macro pulumi_bastionhost_get_hosts_get_hosts_args_doc}
class GetHostsArgs {
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// The host address.
  final pulumi.Input<String>? hostAddress;
  /// Specify the new create a host name of the supports up to 128 characters.
  final pulumi.Input<String>? hostName;
  /// A list of Host IDs.
  final pulumi.Input<List<String>>? ids;
  /// Specify the new create a host where the Bastion host ID of.
  final pulumi.Input<String> instanceId;
  /// A regex string to filter results by Host name.
  final pulumi.Input<String>? nameRegex;
  /// Specify the new create the host's operating system. Valid values: Linux Windows.
  final pulumi.Input<String>? osType;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Specify the new create a host of source. Valid values: Local: localhost Ecs:ECS instance Rds:RDS exclusive cluster host.
  final pulumi.Input<String>? source;
  /// Specify the newly created ECS instance ID or dedicated cluster host ID.
  final pulumi.Input<String>? sourceInstanceId;
  /// The source instance state.
  final pulumi.Input<String>? sourceInstanceState;

  /// Creates a new [GetHostsArgs].
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [hostAddress] The host address.
  /// [hostName] Specify the new create a host name of the supports up to 128 characters.
  /// [ids] A list of Host IDs.
  /// [instanceId] Specify the new create a host where the Bastion host ID of.
  /// [nameRegex] A regex string to filter results by Host name.
  /// [osType] Specify the new create the host's operating system. Valid values: Linux Windows.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [source] Specify the new create a host of source. Valid values: Local: localhost Ecs:ECS instance Rds:RDS exclusive cluster host.
  /// [sourceInstanceId] Specify the newly created ECS instance ID or dedicated cluster host ID.
  /// [sourceInstanceState] The source instance state.
  const GetHostsArgs({
    this.enableDetails,
    this.hostAddress,
    this.hostName,
    this.ids,
    required this.instanceId,
    this.nameRegex,
    this.osType,
    this.outputFile,
    this.source,
    this.sourceInstanceId,
    this.sourceInstanceState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'hostAddress': ?hostAddress,
      'hostName': ?hostName,
      'ids': ?ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'osType': ?osType,
      'outputFile': ?outputFile,
      'source': ?source,
      'sourceInstanceId': ?sourceInstanceId,
      'sourceInstanceState': ?sourceInstanceState,
    };
  }

  factory GetHostsArgs.fromMap(Map<String, dynamic> map) {
    return GetHostsArgs(
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hostAddress: (() { final guardedValue = map['hostAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceInstanceId: (() { final guardedValue = map['sourceInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceInstanceState: (() { final guardedValue = map['sourceInstanceState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

