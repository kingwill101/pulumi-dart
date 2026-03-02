// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_connect_settings.dart';
import 'directory_vpc_settings.dart';

/// Input properties used for looking up and filtering Directory resources.
class DirectoryState {
  /// The access URL for the directory, such as `http://alias.awsapps.com`.
  final pulumi.Input<String>? accessUrl;
  /// The alias for the directory (must be unique amongst all aliases in AWS). Required for `enable_sso`.
  final pulumi.Input<String>? alias;
  /// Connector related information about the directory. Fields documented below.
  final pulumi.Input<DirectoryConnectSettings>? connectSettings;
  /// A textual description for the directory.
  final pulumi.Input<String>? description;
  /// The number of domain controllers desired in the directory. Minimum value of `2`. Scaling of domain controllers is only supported for `MicrosoftAD` directories.
  final pulumi.Input<int>? desiredNumberOfDomainControllers;
  /// A list of IP addresses of the DNS servers for the directory or connector.
  final pulumi.Input<List<String>>? dnsIpAddresses;
  /// The MicrosoftAD edition (`Standard` or `Enterprise`). Defaults to `Enterprise`.
  final pulumi.Input<String>? edition;
  /// Whether to enable single-sign on for the directory. Requires `alias`. Defaults to `false`.
  final pulumi.Input<bool>? enableSso;
  /// The fully qualified name for the directory, such as `corp.example.com`
  final pulumi.Input<String>? name;
  /// The password for the directory administrator or connector user.
  final pulumi.Input<String>? password;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the security group created by the directory.
  final pulumi.Input<String>? securityGroupId;
  /// The short name of the directory, such as `CORP`.
  final pulumi.Input<String>? shortName;
  /// (For `SimpleAD` and `ADConnector` types) The size of the directory (`Small` or `Large` are accepted values). `Large` by default.
  final pulumi.Input<String>? size;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The directory type (`SimpleAD`, `ADConnector` or `MicrosoftAD` are accepted values). Defaults to `SimpleAD`.
  final pulumi.Input<String>? type;
  /// VPC related information about the directory. Fields documented below.
  final pulumi.Input<DirectoryVpcSettings>? vpcSettings;

  /// Creates a new [DirectoryState].
  /// [accessUrl] The access URL for the directory, such as `http://alias.awsapps.com`.
  /// [alias] The alias for the directory (must be unique amongst all aliases in AWS). Required for `enable_sso`.
  /// [connectSettings] Connector related information about the directory. Fields documented below.
  /// [description] A textual description for the directory.
  /// [desiredNumberOfDomainControllers] The number of domain controllers desired in the directory. Minimum value of `2`. Scaling of domain controllers is only supported for `MicrosoftAD` directories.
  /// [dnsIpAddresses] A list of IP addresses of the DNS servers for the directory or connector.
  /// [edition] The MicrosoftAD edition (`Standard` or `Enterprise`). Defaults to `Enterprise`.
  /// [enableSso] Whether to enable single-sign on for the directory. Requires `alias`. Defaults to `false`.
  /// [name] The fully qualified name for the directory, such as `corp.example.com`
  /// [password] The password for the directory administrator or connector user.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupId] The ID of the security group created by the directory.
  /// [shortName] The short name of the directory, such as `CORP`.
  /// [size] (For `SimpleAD` and `ADConnector` types) The size of the directory (`Small` or `Large` are accepted values). `Large` by default.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [type] The directory type (`SimpleAD`, `ADConnector` or `MicrosoftAD` are accepted values). Defaults to `SimpleAD`.
  /// [vpcSettings] VPC related information about the directory. Fields documented below.
  DirectoryState({
    this.accessUrl,
    this.alias,
    this.connectSettings,
    this.description,
    this.desiredNumberOfDomainControllers,
    this.dnsIpAddresses,
    this.edition,
    this.enableSso,
    this.name,
    this.password,
    this.region,
    this.securityGroupId,
    this.shortName,
    this.size,
    this.tags,
    this.tagsAll,
    this.type,
    this.vpcSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessUrl': ?accessUrl,
      'alias': ?alias,
      'connectSettings': ?pulumi.Input.mapOptionalInputValue<DirectoryConnectSettings, Map<String, dynamic>>(connectSettings, (value) => value.toMap()),
      'description': ?description,
      'desiredNumberOfDomainControllers': ?desiredNumberOfDomainControllers,
      'dnsIpAddresses': ?dnsIpAddresses,
      'edition': ?edition,
      'enableSso': ?enableSso,
      'name': ?name,
      'password': ?password,
      'region': ?region,
      'securityGroupId': ?securityGroupId,
      'shortName': ?shortName,
      'size': ?size,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'type': ?type,
      'vpcSettings': ?pulumi.Input.mapOptionalInputValue<DirectoryVpcSettings, Map<String, dynamic>>(vpcSettings, (value) => value.toMap()),
    };
  }

  factory DirectoryState.fromMap(Map<String, dynamic> map) {
    return DirectoryState(
      accessUrl: map['accessUrl'] == null ? null : ((map['accessUrl'] as String).input()).input(),
      alias: map['alias'] == null ? null : ((map['alias'] as String).input()).input(),
      connectSettings: map['connectSettings'] == null ? null : ((DirectoryConnectSettings.fromMap((map['connectSettings']! as Map).cast<String, dynamic>())).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      desiredNumberOfDomainControllers: map['desiredNumberOfDomainControllers'] == null ? null : ((map['desiredNumberOfDomainControllers'] as int).input()).input(),
      dnsIpAddresses: map['dnsIpAddresses'] == null ? null : (((map['dnsIpAddresses'] as List).cast<String>()).input()).input(),
      edition: map['edition'] == null ? null : ((map['edition'] as String).input()).input(),
      enableSso: map['enableSso'] == null ? null : ((map['enableSso'] as bool).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      password: map['password'] == null ? null : ((map['password'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      securityGroupId: map['securityGroupId'] == null ? null : ((map['securityGroupId'] as String).input()).input(),
      shortName: map['shortName'] == null ? null : ((map['shortName'] as String).input()).input(),
      size: map['size'] == null ? null : ((map['size'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      type: map['type'] == null ? null : ((map['type'] as String).input()).input(),
      vpcSettings: map['vpcSettings'] == null ? null : ((DirectoryVpcSettings.fromMap((map['vpcSettings']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

