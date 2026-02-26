// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getUrlList.
class GetUrlListResult2 {
  /// Time when the security policy was created.
  final String createTime;

  /// Optional. Free-text description of the resource.
  final String description;

  /// Name of the resource provided by the user. Name is of the form projects/{project}/locations/{location}/urlLists/{url_list} url_list should match the pattern:(^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  final String name;

  /// Time when the security policy was updated.
  final String updateTime;

  /// FQDNs and URLs.
  final List<String> values;

  GetUrlListResult2({
    required this.createTime,
    required this.description,
    required this.name,
    required this.updateTime,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['name'] = name;
    map['updateTime'] = updateTime;
    map['values'] = values;
    return map;
  }

  factory GetUrlListResult2.fromMap(Map<String, dynamic> map) {
    return GetUrlListResult2(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
