// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SearchResourceProperty {
  /// Details about this property. The content of this field is a JSON object that varies based on the resource type.
  final pulumi.Input<String> data;
  /// The date and time that the information about this resource property was last updated.
  final pulumi.Input<String> lastReportedAt;
  /// Name of this property of the resource.
  final pulumi.Input<String> name;

  /// Creates a new [SearchResourceProperty].
  /// [data] Details about this property. The content of this field is a JSON object that varies based on the resource type.
  /// [lastReportedAt] The date and time that the information about this resource property was last updated.
  /// [name] Name of this property of the resource.
  SearchResourceProperty({
    required this.data,
    required this.lastReportedAt,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data,
      'lastReportedAt': lastReportedAt,
      'name': name,
    };
  }

  factory SearchResourceProperty.fromMap(Map<String, dynamic> map) {
    return SearchResourceProperty(
      data: (map['data'] as String).input(),
      lastReportedAt: (map['lastReportedAt'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

