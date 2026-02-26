// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getConnection.
class GetConnectionArgs3 {
  /// Concatenation of the catalog ID and connection name. For example, if your account ID is
  /// <span pulumi-lang-nodejs="`123456789123`" pulumi-lang-dotnet="`123456789123`" pulumi-lang-go="`123456789123`" pulumi-lang-python="`123456789123`" pulumi-lang-yaml="`123456789123`" pulumi-lang-java="`123456789123`">`123456789123`</span> and the connection name is <span pulumi-lang-nodejs="`conn`" pulumi-lang-dotnet="`Conn`" pulumi-lang-go="`conn`" pulumi-lang-python="`conn`" pulumi-lang-yaml="`conn`" pulumi-lang-java="`conn`">`conn`</span> then the ID is `123456789123:conn`.
  final Input<String> id;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Tags assigned to the resource
  final Input<Map<String, String>>? tags;

  GetConnectionArgs3({
    required this.id,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetConnectionArgs3.fromMap(Map<String, dynamic> map) {
    return GetConnectionArgs3(
      id: Input.asInput<String>(map['id']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
