// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nfs_location_mount_options.dart';
import 'nfs_location_on_prem_config.dart';

/// Input properties used for looking up and filtering NfsLocation resources.
class NfsLocationState {
  /// Amazon Resource Name (ARN) of the DataSync Location.
  final pulumi.Input<String>? arn;
  /// Configuration block containing mount options used by DataSync to access the NFS Server.
  final pulumi.Input<NfsLocationMountOptions>? mountOptions;
  /// Configuration block containing information for connecting to the NFS File System.
  final pulumi.Input<NfsLocationOnPremConfig>? onPremConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies the IP address or DNS name of the NFS server. The DataSync Agent(s) use this to mount the NFS server.
  final pulumi.Input<String>? serverHostname;
  /// Subdirectory to perform actions as source or destination. Should be exported by the NFS server.
  final pulumi.Input<String>? subdirectory;
  /// Key-value pairs of resource tags to assign to the DataSync Location. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<String>? uri;

  /// Creates a new [NfsLocationState].
  /// [arn] Amazon Resource Name (ARN) of the DataSync Location.
  /// [mountOptions] Configuration block containing mount options used by DataSync to access the NFS Server.
  /// [onPremConfig] Configuration block containing information for connecting to the NFS File System.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serverHostname] Specifies the IP address or DNS name of the NFS server. The DataSync Agent(s) use this to mount the NFS server.
  /// [subdirectory] Subdirectory to perform actions as source or destination. Should be exported by the NFS server.
  /// [tags] Key-value pairs of resource tags to assign to the DataSync Location. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [uri] Optional.
  NfsLocationState({
    pulumi.Output<String>? arn,
    pulumi.Output<NfsLocationMountOptions>? mountOptions,
    pulumi.Output<NfsLocationOnPremConfig>? onPremConfig,
    pulumi.Output<String>? region,
    pulumi.Output<String>? serverHostname,
    pulumi.Output<String>? subdirectory,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? uri,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      mountOptions = pulumi.Input.asOptionalInput<NfsLocationMountOptions>(mountOptions),
      onPremConfig = pulumi.Input.asOptionalInput<NfsLocationOnPremConfig>(onPremConfig),
      region = pulumi.Input.asOptionalInput<String>(region),
      serverHostname = pulumi.Input.asOptionalInput<String>(serverHostname),
      subdirectory = pulumi.Input.asOptionalInput<String>(subdirectory),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      uri = pulumi.Input.asOptionalInput<String>(uri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'mountOptions': ?pulumi.Input.mapOptionalInputValue<NfsLocationMountOptions, Map<String, dynamic>>(mountOptions, (value) => value.toMap()),
      'onPremConfig': ?pulumi.Input.mapOptionalInputValue<NfsLocationOnPremConfig, Map<String, dynamic>>(onPremConfig, (value) => value.toMap()),
      'region': ?region,
      'serverHostname': ?serverHostname,
      'subdirectory': ?subdirectory,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'uri': ?uri,
    };
  }

  factory NfsLocationState.fromMap(Map<String, dynamic> map) {
    return NfsLocationState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      mountOptions: map['mountOptions'] == null ? null : pulumi.Output.create<NfsLocationMountOptions>(NfsLocationMountOptions.fromMap((map['mountOptions'] as Map).cast<String, dynamic>())),
      onPremConfig: map['onPremConfig'] == null ? null : pulumi.Output.create<NfsLocationOnPremConfig>(NfsLocationOnPremConfig.fromMap((map['onPremConfig'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serverHostname: map['serverHostname'] == null ? null : pulumi.Output.create<String>(map['serverHostname'] as String),
      subdirectory: map['subdirectory'] == null ? null : pulumi.Output.create<String>(map['subdirectory'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      uri: map['uri'] == null ? null : pulumi.Output.create<String>(map['uri'] as String),
    );
  }
}

