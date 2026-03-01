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
  GetHostsArgs({
    bool? enableDetails,
    String? hostAddress,
    String? hostName,
    List<String>? ids,
    required String instanceId,
    String? nameRegex,
    String? osType,
    String? outputFile,
    String? source,
    String? sourceInstanceId,
    String? sourceInstanceState,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      hostAddress = pulumi.Input.asOptionalInput<String>(hostAddress),
      hostName = pulumi.Input.asOptionalInput<String>(hostName),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      osType = pulumi.Input.asOptionalInput<String>(osType),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      source = pulumi.Input.asOptionalInput<String>(source),
      sourceInstanceId = pulumi.Input.asOptionalInput<String>(sourceInstanceId),
      sourceInstanceState = pulumi.Input.asOptionalInput<String>(sourceInstanceState);

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
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      hostAddress: map['hostAddress'] == null ? null : map['hostAddress'] as String,
      hostName: map['hostName'] == null ? null : map['hostName'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      osType: map['osType'] == null ? null : map['osType'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      source: map['source'] == null ? null : map['source'] as String,
      sourceInstanceId: map['sourceInstanceId'] == null ? null : map['sourceInstanceId'] as String,
      sourceInstanceState: map['sourceInstanceState'] == null ? null : map['sourceInstanceState'] as String,
    );
  }
}

