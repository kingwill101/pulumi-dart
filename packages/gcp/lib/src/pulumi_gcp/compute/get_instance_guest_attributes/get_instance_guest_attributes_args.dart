// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getInstanceGuestAttributes.
class GetInstanceGuestAttributesArgs {
  /// The name or<span pulumi-lang-nodejs=" selfLink " pulumi-lang-dotnet=" SelfLink " pulumi-lang-go=" selfLink " pulumi-lang-python=" self_link " pulumi-lang-yaml=" selfLink " pulumi-lang-java=" selfLink "> self_link </span>of the instance.
  final Input<String> name;

  /// The ID of the project in which the resource belongs.
  /// If <span pulumi-lang-nodejs="`selfLink`" pulumi-lang-dotnet="`SelfLink`" pulumi-lang-go="`selfLink`" pulumi-lang-python="`self_link`" pulumi-lang-yaml="`selfLink`" pulumi-lang-java="`selfLink`">`self_link`</span> is provided, this value is ignored.  If neither <span pulumi-lang-nodejs="`selfLink`" pulumi-lang-dotnet="`SelfLink`" pulumi-lang-go="`selfLink`" pulumi-lang-python="`self_link`" pulumi-lang-yaml="`selfLink`" pulumi-lang-java="`selfLink`">`self_link`</span>
  /// nor <span pulumi-lang-nodejs="`project`" pulumi-lang-dotnet="`Project`" pulumi-lang-go="`project`" pulumi-lang-python="`project`" pulumi-lang-yaml="`project`" pulumi-lang-java="`project`">`project`</span> are provided, the provider project is used.
  final Input<String>? project;

  /// Path to query for the guest attributes. Consists of
  /// <span pulumi-lang-nodejs="`namespace`" pulumi-lang-dotnet="`Namespace`" pulumi-lang-go="`namespace`" pulumi-lang-python="`namespace`" pulumi-lang-yaml="`namespace`" pulumi-lang-java="`namespace`">`namespace`</span> name for the attributes followed with a `/`.
  final Input<String>? queryPath;
  final Input<String>? region;

  /// Key of a variable to get the value of. Consists of
  /// <span pulumi-lang-nodejs="`namespace`" pulumi-lang-dotnet="`Namespace`" pulumi-lang-go="`namespace`" pulumi-lang-python="`namespace`" pulumi-lang-yaml="`namespace`" pulumi-lang-java="`namespace`">`namespace`</span> name and <span pulumi-lang-nodejs="`key`" pulumi-lang-dotnet="`Key`" pulumi-lang-go="`key`" pulumi-lang-python="`key`" pulumi-lang-yaml="`key`" pulumi-lang-java="`key`">`key`</span> name for the variable separated by a `/`.
  final Input<String>? variableKey;

  /// The zone of the instance. If <span pulumi-lang-nodejs="`selfLink`" pulumi-lang-dotnet="`SelfLink`" pulumi-lang-go="`selfLink`" pulumi-lang-python="`self_link`" pulumi-lang-yaml="`selfLink`" pulumi-lang-java="`selfLink`">`self_link`</span> is provided, this
  /// value is ignored.  If neither <span pulumi-lang-nodejs="`selfLink`" pulumi-lang-dotnet="`SelfLink`" pulumi-lang-go="`selfLink`" pulumi-lang-python="`self_link`" pulumi-lang-yaml="`selfLink`" pulumi-lang-java="`selfLink`">`self_link`</span> nor <span pulumi-lang-nodejs="`zone`" pulumi-lang-dotnet="`Zone`" pulumi-lang-go="`zone`" pulumi-lang-python="`zone`" pulumi-lang-yaml="`zone`" pulumi-lang-java="`zone`">`zone`</span> are provided, the
  /// provider zone is used.
  final Input<String>? zone;

  GetInstanceGuestAttributesArgs({
    required this.name,
    this.project,
    this.queryPath,
    this.region,
    this.variableKey,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final queryPathValue = queryPath;
    if (queryPathValue != null) {
      map['queryPath'] = queryPathValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final variableKeyValue = variableKey;
    if (variableKeyValue != null) {
      map['variableKey'] = variableKeyValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory GetInstanceGuestAttributesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceGuestAttributesArgs(
      name: Input.asInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      queryPath: Input.asOptionalInput<String>(map['queryPath']),
      region: Input.asOptionalInput<String>(map['region']),
      variableKey: Input.asOptionalInput<String>(map['variableKey']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
