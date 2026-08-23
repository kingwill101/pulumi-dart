// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_connect_settings.dart';
import 'directory_vpc_settings.dart';

/// Input properties used for looking up and filtering Directory resources.
class DirectoryState {
  /// The access URL for the directory, such as `http://alias.awsapps.com`.
  final pulumi.Input<String>? accessUrl;
  /// The alias for the directory (must be unique amongst all aliases in AWS). Required for `enableSso`.
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
  /// Enables access to directory data via the Directory Service Data API for the specified directory. For more information, see [Directory Service Data API Reference](https://docs.aws.amazon.com/directoryservicedata/latest/DirectoryServiceDataAPIReference/Welcome.html).
  final pulumi.Input<bool>? enableDirectoryDataAccess;
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
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The directory type (`SimpleAD`, `ADConnector` or `MicrosoftAD` are accepted values). Defaults to `SimpleAD`.
  final pulumi.Input<String>? type;
  /// VPC related information about the directory. Fields documented below.
  final pulumi.Input<DirectoryVpcSettings>? vpcSettings;

  /// Creates a new [DirectoryState].
  /// [accessUrl] The access URL for the directory, such as `http://alias.awsapps.com`.
  /// [alias] The alias for the directory (must be unique amongst all aliases in AWS). Required for `enableSso`.
  /// [connectSettings] Connector related information about the directory. Fields documented below.
  /// [description] A textual description for the directory.
  /// [desiredNumberOfDomainControllers] The number of domain controllers desired in the directory. Minimum value of `2`. Scaling of domain controllers is only supported for `MicrosoftAD` directories.
  /// [dnsIpAddresses] A list of IP addresses of the DNS servers for the directory or connector.
  /// [edition] The MicrosoftAD edition (`Standard` or `Enterprise`). Defaults to `Enterprise`.
  /// [enableDirectoryDataAccess] Enables access to directory data via the Directory Service Data API for the specified directory. For more information, see [Directory Service Data API Reference](https://docs.aws.amazon.com/directoryservicedata/latest/DirectoryServiceDataAPIReference/Welcome.html).
  /// [enableSso] Whether to enable single-sign on for the directory. Requires `alias`. Defaults to `false`.
  /// [name] The fully qualified name for the directory, such as `corp.example.com`
  /// [password] The password for the directory administrator or connector user.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupId] The ID of the security group created by the directory.
  /// [shortName] The short name of the directory, such as `CORP`.
  /// [size] (For `SimpleAD` and `ADConnector` types) The size of the directory (`Small` or `Large` are accepted values). `Large` by default.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [type] The directory type (`SimpleAD`, `ADConnector` or `MicrosoftAD` are accepted values). Defaults to `SimpleAD`.
  /// [vpcSettings] VPC related information about the directory. Fields documented below.
  const DirectoryState({
    this.accessUrl,
    this.alias,
    this.connectSettings,
    this.description,
    this.desiredNumberOfDomainControllers,
    this.dnsIpAddresses,
    this.edition,
    this.enableDirectoryDataAccess,
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
      'enableDirectoryDataAccess': ?enableDirectoryDataAccess,
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
      accessUrl: (() { final guardedValue = map['accessUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectSettings: (() { final guardedValue = map['connectSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DirectoryConnectSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      desiredNumberOfDomainControllers: (() { final guardedValue = map['desiredNumberOfDomainControllers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dnsIpAddresses: (() { final guardedValue = map['dnsIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      edition: (() { final guardedValue = map['edition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableDirectoryDataAccess: (() { final guardedValue = map['enableDirectoryDataAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableSso: (() { final guardedValue = map['enableSso']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupId: (() { final guardedValue = map['securityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shortName: (() { final guardedValue = map['shortName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcSettings: (() { final guardedValue = map['vpcSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DirectoryVpcSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
