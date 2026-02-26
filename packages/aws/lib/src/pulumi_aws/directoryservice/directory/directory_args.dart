// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../directory_connect_settings/directory_connect_settings.dart';
import '../directory_vpc_settings/directory_vpc_settings.dart';

/// The set of arguments for Directory.
class DirectoryArgs {
  /// The alias for the directory (must be unique amongst all aliases in AWS). Required for <span pulumi-lang-nodejs="`enableSso`" pulumi-lang-dotnet="`EnableSso`" pulumi-lang-go="`enableSso`" pulumi-lang-python="`enable_sso`" pulumi-lang-yaml="`enableSso`" pulumi-lang-java="`enableSso`">`enable_sso`</span>.
  final Input<String>? alias;

  /// Connector related information about the directory. Fields documented below.
  final Input<DirectoryConnectSettings>? connectSettings;

  /// A textual description for the directory.
  final Input<String>? description;

  /// The number of domain controllers desired in the directory. Minimum value of <span pulumi-lang-nodejs="`2`" pulumi-lang-dotnet="`2`" pulumi-lang-go="`2`" pulumi-lang-python="`2`" pulumi-lang-yaml="`2`" pulumi-lang-java="`2`">`2`</span>. Scaling of domain controllers is only supported for `MicrosoftAD` directories.
  final Input<int>? desiredNumberOfDomainControllers;

  /// The MicrosoftAD edition (`Standard` or `Enterprise`). Defaults to `Enterprise`.
  final Input<String>? edition;

  /// Whether to enable single-sign on for the directory. Requires <span pulumi-lang-nodejs="`alias`" pulumi-lang-dotnet="`Alias`" pulumi-lang-go="`alias`" pulumi-lang-python="`alias`" pulumi-lang-yaml="`alias`" pulumi-lang-java="`alias`">`alias`</span>. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? enableSso;

  /// The fully qualified name for the directory, such as `corp.example.com`
  final Input<String> name;

  /// The password for the directory administrator or connector user.
  final Input<String> password;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The short name of the directory, such as `CORP`.
  final Input<String>? shortName;

  /// (For `SimpleAD` and `ADConnector` types) The size of the directory (`Small` or `Large` are accepted values). `Large` by default.
  final Input<String>? size;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The directory type (`SimpleAD`, `ADConnector` or `MicrosoftAD` are accepted values). Defaults to `SimpleAD`.
  final Input<String>? type;

  /// VPC related information about the directory. Fields documented below.
  final Input<DirectoryVpcSettings>? vpcSettings;

  DirectoryArgs({
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
    final map = <String, dynamic>{};
    final aliasValue = alias;
    if (aliasValue != null) {
      map['alias'] = aliasValue;
    }
    final connectSettingsValue = connectSettings;
    if (connectSettingsValue != null) {
      map['connectSettings'] = Input.mapOptionalInputValue<
          DirectoryConnectSettings,
          Map<String, dynamic>>(connectSettingsValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final desiredNumberOfDomainControllersValue =
        desiredNumberOfDomainControllers;
    if (desiredNumberOfDomainControllersValue != null) {
      map['desiredNumberOfDomainControllers'] =
          desiredNumberOfDomainControllersValue;
    }
    final editionValue = edition;
    if (editionValue != null) {
      map['edition'] = editionValue;
    }
    final enableSsoValue = enableSso;
    if (enableSsoValue != null) {
      map['enableSso'] = enableSsoValue;
    }
    map['name'] = name;
    map['password'] = password;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final shortNameValue = shortName;
    if (shortNameValue != null) {
      map['shortName'] = shortNameValue;
    }
    final sizeValue = size;
    if (sizeValue != null) {
      map['size'] = sizeValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final vpcSettingsValue = vpcSettings;
    if (vpcSettingsValue != null) {
      map['vpcSettings'] = Input.mapOptionalInputValue<DirectoryVpcSettings,
          Map<String, dynamic>>(vpcSettingsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DirectoryArgs.fromMap(Map<String, dynamic> map) {
    return DirectoryArgs(
      alias: Input.asOptionalInput<String>(map['alias']),
      connectSettings: Input.asOptionalInput<DirectoryConnectSettings>(
          map['connectSettings']),
      description: Input.asOptionalInput<String>(map['description']),
      desiredNumberOfDomainControllers:
          Input.asOptionalInput<int>(map['desiredNumberOfDomainControllers']),
      edition: Input.asOptionalInput<String>(map['edition']),
      enableSso: Input.asOptionalInput<bool>(map['enableSso']),
      name: Input.asInput<String>(map['name']),
      password: Input.asInput<String>(map['password']),
      region: Input.asOptionalInput<String>(map['region']),
      shortName: Input.asOptionalInput<String>(map['shortName']),
      size: Input.asOptionalInput<String>(map['size']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: Input.asOptionalInput<String>(map['type']),
      vpcSettings:
          Input.asOptionalInput<DirectoryVpcSettings>(map['vpcSettings']),
    );
  }
}
