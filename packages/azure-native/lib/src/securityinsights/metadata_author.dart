// ignore_for_file: unused_element, unnecessary_cast


/// Publisher or creator of the content item.
class MetadataAuthor {
  /// Email of author contact
  final String? email;
  /// Link for author/vendor page
  final String? link;
  /// Name of the author. Company or person.
  final String? name;

  /// Creates a new [MetadataAuthor].
  /// [email] Email of author contact
  /// [link] Link for author/vendor page
  /// [name] Name of the author. Company or person.
  MetadataAuthor({
    this.email,
    this.link,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'link': ?link,
      'name': ?name,
    };
  }

  factory MetadataAuthor.fromMap(Map<String, dynamic> map) {
    return MetadataAuthor(
      email: map['email'] == null ? null : map['email'] as String,
      link: map['link'] == null ? null : map['link'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

