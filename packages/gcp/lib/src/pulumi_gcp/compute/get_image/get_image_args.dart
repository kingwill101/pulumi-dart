// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getImage.
class GetImageArgs {
  /// The family name of the image.
  final Input<String>? family;
  final Input<String>? filter;

  /// A boolean to indicate either to take to most recent image if your filter
  /// returns more than one image.
  final Input<bool>? mostRecent;

  /// , <span pulumi-lang-nodejs="`family`" pulumi-lang-dotnet="`Family`" pulumi-lang-go="`family`" pulumi-lang-python="`family`" pulumi-lang-yaml="`family`" pulumi-lang-java="`family`">`family`</span> or <span pulumi-lang-nodejs="`filter`" pulumi-lang-dotnet="`Filter`" pulumi-lang-go="`filter`" pulumi-lang-python="`filter`" pulumi-lang-yaml="`filter`" pulumi-lang-java="`filter`">`filter`</span> - (Required) The name of a specific image or a family.
  /// Exactly one of <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>, <span pulumi-lang-nodejs="`family`" pulumi-lang-dotnet="`Family`" pulumi-lang-go="`family`" pulumi-lang-python="`family`" pulumi-lang-yaml="`family`" pulumi-lang-java="`family`">`family`</span> or <span pulumi-lang-nodejs="`filter`" pulumi-lang-dotnet="`Filter`" pulumi-lang-go="`filter`" pulumi-lang-python="`filter`" pulumi-lang-yaml="`filter`" pulumi-lang-java="`filter`">`filter`</span> must be specified. If <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> is specified, it will fetch
  /// the corresponding image. If <span pulumi-lang-nodejs="`family`" pulumi-lang-dotnet="`Family`" pulumi-lang-go="`family`" pulumi-lang-python="`family`" pulumi-lang-yaml="`family`" pulumi-lang-java="`family`">`family`</span> is specified, it will return the latest image
  /// that is part of an image family and is not deprecated. If you specify <span pulumi-lang-nodejs="`filter`" pulumi-lang-dotnet="`Filter`" pulumi-lang-go="`filter`" pulumi-lang-python="`filter`" pulumi-lang-yaml="`filter`" pulumi-lang-java="`filter`">`filter`</span>, your
  /// filter must return exactly one image unless you use <span pulumi-lang-nodejs="`mostRecent`" pulumi-lang-dotnet="`MostRecent`" pulumi-lang-go="`mostRecent`" pulumi-lang-python="`most_recent`" pulumi-lang-yaml="`mostRecent`" pulumi-lang-java="`mostRecent`">`most_recent`</span>.
  /// Filter syntax can be found [here](https://cloud.google.com/compute/docs/reference/rest/v1/images/list) in the filter section.
  ///
  /// - - -
  final Input<String>? name;

  /// The project in which the resource belongs. If it is not
  /// provided, the provider project is used. If you are using a
  /// [public base image][pubimg], be sure to specify the correct Image Project.
  final Input<String>? project;

  GetImageArgs({
    this.family,
    this.filter,
    this.mostRecent,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final familyValue = family;
    if (familyValue != null) {
      map['family'] = familyValue;
    }
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    final mostRecentValue = mostRecent;
    if (mostRecentValue != null) {
      map['mostRecent'] = mostRecentValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetImageArgs.fromMap(Map<String, dynamic> map) {
    return GetImageArgs(
      family: Input.asOptionalInput<String>(map['family']),
      filter: Input.asOptionalInput<String>(map['filter']),
      mostRecent: Input.asOptionalInput<bool>(map['mostRecent']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
