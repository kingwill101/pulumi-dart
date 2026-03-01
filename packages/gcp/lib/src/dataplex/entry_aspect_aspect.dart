// ignore_for_file: unused_element, unnecessary_cast

class EntryAspectAspect {
  /// (Output)
  /// The resource name of the type used to create this Aspect.
  final String? aspectType;

  /// (Output)
  /// The time when the Aspect was created.
  final String? createTime;

  /// The content of the aspect in JSON form, according to its aspect type schema. The maximum size of the field is 120KB (encoded as UTF-8).
  final String data;

  /// (Output)
  /// The path in the entry under which the aspect is attached.
  final String? path;

  /// (Output)
  /// The time when the Aspect was last modified.
  final String? updateTime;

  /// Creates a new [EntryAspectAspect].
  /// [aspectType] (Output)
  /// [createTime] (Output)
  /// [data] The content of the aspect in JSON form, according to its aspect type schema. The maximum size of the field is 120KB (encoded as UTF-8).
  /// [path] (Output)
  /// [updateTime] (Output)
  EntryAspectAspect({
    this.aspectType,
    this.createTime,
    required this.data,
    this.path,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aspectType': ?aspectType,
      'createTime': ?createTime,
      'data': data,
      'path': ?path,
      'updateTime': ?updateTime,
    };
  }

  factory EntryAspectAspect.fromMap(Map<String, dynamic> map) {
    return EntryAspectAspect(
      aspectType: map['aspectType'] == null
          ? null
          : map['aspectType'] as String,
      createTime: map['createTime'] == null
          ? null
          : map['createTime'] as String,
      data: map['data'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      updateTime: map['updateTime'] == null
          ? null
          : map['updateTime'] as String,
    );
  }
}
