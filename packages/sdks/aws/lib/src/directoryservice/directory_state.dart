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
    pulumi.Output<String>? accessUrl,
    pulumi.Output<String>? alias,
    pulumi.Output<DirectoryConnectSettings>? connectSettings,
    pulumi.Output<String>? description,
    pulumi.Output<int>? desiredNumberOfDomainControllers,
    pulumi.Output<List<String>>? dnsIpAddresses,
    pulumi.Output<String>? edition,
    pulumi.Output<bool>? enableSso,
    pulumi.Output<String>? name,
    pulumi.Output<String>? password,
    pulumi.Output<String>? region,
    pulumi.Output<String>? securityGroupId,
    pulumi.Output<String>? shortName,
    pulumi.Output<String>? size,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? type,
    pulumi.Output<DirectoryVpcSettings>? vpcSettings,
  }) :
      accessUrl = pulumi.Input.asOptionalInput<String>(accessUrl),
      alias = pulumi.Input.asOptionalInput<String>(alias),
      connectSettings = pulumi.Input.asOptionalInput<DirectoryConnectSettings>(connectSettings),
      description = pulumi.Input.asOptionalInput<String>(description),
      desiredNumberOfDomainControllers = pulumi.Input.asOptionalInput<int>(desiredNumberOfDomainControllers),
      dnsIpAddresses = pulumi.Input.asOptionalInput<List<String>>(dnsIpAddresses),
      edition = pulumi.Input.asOptionalInput<String>(edition),
      enableSso = pulumi.Input.asOptionalInput<bool>(enableSso),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asOptionalInput<String>(password),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroupId = pulumi.Input.asOptionalInput<String>(securityGroupId),
      shortName = pulumi.Input.asOptionalInput<String>(shortName),
      size = pulumi.Input.asOptionalInput<String>(size),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      type = pulumi.Input.asOptionalInput<String>(type),
      vpcSettings = pulumi.Input.asOptionalInput<DirectoryVpcSettings>(vpcSettings);

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
      accessUrl: map['accessUrl'] == null ? null : pulumi.Output.create<String>(map['accessUrl'] as String),
      alias: map['alias'] == null ? null : pulumi.Output.create<String>(map['alias'] as String),
      connectSettings: map['connectSettings'] == null ? null : pulumi.Output.create<DirectoryConnectSettings>(DirectoryConnectSettings.fromMap((map['connectSettings'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      desiredNumberOfDomainControllers: map['desiredNumberOfDomainControllers'] == null ? null : pulumi.Output.create<int>(map['desiredNumberOfDomainControllers'] as int),
      dnsIpAddresses: map['dnsIpAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['dnsIpAddresses'] as List).cast<String>()),
      edition: map['edition'] == null ? null : pulumi.Output.create<String>(map['edition'] as String),
      enableSso: map['enableSso'] == null ? null : pulumi.Output.create<bool>(map['enableSso'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityGroupId: map['securityGroupId'] == null ? null : pulumi.Output.create<String>(map['securityGroupId'] as String),
      shortName: map['shortName'] == null ? null : pulumi.Output.create<String>(map['shortName'] as String),
      size: map['size'] == null ? null : pulumi.Output.create<String>(map['size'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      vpcSettings: map['vpcSettings'] == null ? null : pulumi.Output.create<DirectoryVpcSettings>(DirectoryVpcSettings.fromMap((map['vpcSettings'] as Map).cast<String, dynamic>())),
    );
  }
}

