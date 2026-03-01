// ignore_for_file: unused_element, unnecessary_cast


/// network service design group properties.
class NetworkServiceDesignGroupPropertiesFormat {
  /// The network service design group description.
  final String? description;

  /// Creates a new [NetworkServiceDesignGroupPropertiesFormat].
  /// [description] The network service design group description.
  NetworkServiceDesignGroupPropertiesFormat({
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
    };
  }

  factory NetworkServiceDesignGroupPropertiesFormat.fromMap(Map<String, dynamic> map) {
    return NetworkServiceDesignGroupPropertiesFormat(
      description: map['description'] == null ? null : map['description'] as String,
    );
  }
}

