// ignore_for_file: unused_element, unnecessary_cast


class StudioApplicationInstance {
  /// The id of the instance.
  final String? id;
  /// The name of the instance.
  final String? nodeName;
  /// The type of the instance.
  final String? nodeType;

  /// Creates a new [StudioApplicationInstance].
  /// [id] The id of the instance.
  /// [nodeName] The name of the instance.
  /// [nodeType] The type of the instance.
  StudioApplicationInstance({
    this.id,
    this.nodeName,
    this.nodeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'nodeName': ?nodeName,
      'nodeType': ?nodeType,
    };
  }

  factory StudioApplicationInstance.fromMap(Map<String, dynamic> map) {
    return StudioApplicationInstance(
      id: map['id'] == null ? null : map['id'] as String,
      nodeName: map['nodeName'] == null ? null : map['nodeName'] as String,
      nodeType: map['nodeType'] == null ? null : map['nodeType'] as String,
    );
  }
}

