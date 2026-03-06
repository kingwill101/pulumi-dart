// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_connect_settings.dart';
import 'directory_vpc_settings.dart';

/// {@template pulumi_directoryservice_directory_directory_args_doc}
/// The set of arguments for Directory.
/// {@endtemplate}
/// {@macro pulumi_directoryservice_directory_directory_args_doc}
class DirectoryArgs {
  /// The alias for the directory (must be unique amongst all aliases in AWS). Required for `enable_sso`.
  final pulumi.Input<String>? alias;
  /// Connector related information about the directory. Fields documented below.
  final pulumi.Input<DirectoryConnectSettings>? connectSettings;
  /// A textual description for the directory.
  final pulumi.Input<String>? description;
  /// The number of domain controllers desired in the directory. Minimum value of `2`. Scaling of domain controllers is only supported for `MicrosoftAD` directories.
  final pulumi.Input<int>? desiredNumberOfDomainControllers;
  /// The MicrosoftAD edition (`Standard` or `Enterprise`). Defaults to `Enterprise`.
  final pulumi.Input<String>? edition;
  /// Whether to enable single-sign on for the directory. Requires `alias`. Defaults to `false`.
  final pulumi.Input<bool>? enableSso;
  /// The fully qualified name for the directory, such as `corp.example.com`
  final pulumi.Input<String> name;
  /// The password for the directory administrator or connector user.
  final pulumi.Input<String> password;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The short name of the directory, such as `CORP`.
  final pulumi.Input<String>? shortName;
  /// (For `SimpleAD` and `ADConnector` types) The size of the directory (`Small` or `Large` are accepted values). `Large` by default.
  final pulumi.Input<String>? size;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The directory type (`SimpleAD`, `ADConnector` or `MicrosoftAD` are accepted values). Defaults to `SimpleAD`.
  final pulumi.Input<String>? type;
  /// VPC related information about the directory. Fields documented below.
  final pulumi.Input<DirectoryVpcSettings>? vpcSettings;

  /// Creates a new [DirectoryArgs].
  /// [alias] The alias for the directory (must be unique amongst all aliases in AWS). Required for `enable_sso`.
  /// [connectSettings] Connector related information about the directory. Fields documented below.
  /// [description] A textual description for the directory.
  /// [desiredNumberOfDomainControllers] The number of domain controllers desired in the directory. Minimum value of `2`. Scaling of domain controllers is only supported for `MicrosoftAD` directories.
  /// [edition] The MicrosoftAD edition (`Standard` or `Enterprise`). Defaults to `Enterprise`.
  /// [enableSso] Whether to enable single-sign on for the directory. Requires `alias`. Defaults to `false`.
  /// [name] The fully qualified name for the directory, such as `corp.example.com`
  /// [password] The password for the directory administrator or connector user.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [shortName] The short name of the directory, such as `CORP`.
  /// [size] (For `SimpleAD` and `ADConnector` types) The size of the directory (`Small` or `Large` are accepted values). `Large` by default.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [type] The directory type (`SimpleAD`, `ADConnector` or `MicrosoftAD` are accepted values). Defaults to `SimpleAD`.
  /// [vpcSettings] VPC related information about the directory. Fields documented below.
  const DirectoryArgs({
    this.alias,
    this.connectSettings,
    this.description,
    this.desiredNumberOfDomainControllers,
    this.edition,
    this.enableSso,
    required this.name,
    required this.password,
    this.region,
    this.shortName,
    this.size,
    this.tags,
    this.type,
    this.vpcSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'connectSettings': ?pulumi.Input.mapOptionalInputValue<DirectoryConnectSettings, Map<String, dynamic>>(connectSettings, (value) => value.toMap()),
      'description': ?description,
      'desiredNumberOfDomainControllers': ?desiredNumberOfDomainControllers,
      'edition': ?edition,
      'enableSso': ?enableSso,
      'name': name,
      'password': password,
      'region': ?region,
      'shortName': ?shortName,
      'size': ?size,
      'tags': ?tags,
      'type': ?type,
      'vpcSettings': ?pulumi.Input.mapOptionalInputValue<DirectoryVpcSettings, Map<String, dynamic>>(vpcSettings, (value) => value.toMap()),
    };
  }

  factory DirectoryArgs.fromMap(Map<String, dynamic> map) {
    return DirectoryArgs(
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectSettings: (() { final guardedValue = map['connectSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DirectoryConnectSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      desiredNumberOfDomainControllers: (() { final guardedValue = map['desiredNumberOfDomainControllers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      edition: (() { final guardedValue = map['edition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableSso: (() { final guardedValue = map['enableSso']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shortName: (() { final guardedValue = map['shortName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcSettings: (() { final guardedValue = map['vpcSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DirectoryVpcSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

