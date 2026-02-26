// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTiers.
class GetTiersArgs {
  /// The Project ID for which to list tiers. If <span pulumi-lang-nodejs="`project`" pulumi-lang-dotnet="`Project`" pulumi-lang-go="`project`" pulumi-lang-python="`project`" pulumi-lang-yaml="`project`" pulumi-lang-java="`project`">`project`</span> is not provided, the project defined within the default provider configuration is used.
  final Input<String>? project;

  GetTiersArgs({
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetTiersArgs.fromMap(Map<String, dynamic> map) {
    return GetTiersArgs(
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
