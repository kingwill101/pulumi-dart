// ignore_for_file: unused_element, unnecessary_cast


/// Definition of PrefixListId
class PrefixListId {
  /// <p>A description for the security group rule that references this prefix list ID.</p> <p>Constraints: Up to 255 characters in length. Allowed characters are a-z, A-Z, 0-9, spaces, and ._-:/()#,@[]+=;{}!$*</p>
  final String? description;
  /// <p>The ID of the prefix.</p>
  final String? prefixListId;

  /// Creates a new [PrefixListId].
  /// [description] <p>A description for the security group rule that references this prefix list ID.</p> <p>Constraints: Up to 255 characters in length. Allowed characters are a-z, A-Z, 0-9, spaces, and ._-:/()#,@[]+=;{}!$*</p>
  /// [prefixListId] <p>The ID of the prefix.</p>
  PrefixListId({
    this.description,
    this.prefixListId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'prefixListId': ?prefixListId,
    };
  }

  factory PrefixListId.fromMap(Map<String, dynamic> map) {
    return PrefixListId(
      description: map['description'] == null ? null : map['description'] as String,
      prefixListId: map['prefixListId'] == null ? null : map['prefixListId'] as String,
    );
  }
}

