// ignore_for_file: unused_element, unnecessary_cast


/// Definition of DBSnapshotAttribute
class DBSnapshotAttribute {
  /// <p>The name of the manual DB snapshot attribute.</p> <p>The attribute named <code>restore</code> refers to the list of Amazon Web Services accounts that have permission to copy or restore the manual DB cluster snapshot. For more information, see the <code>ModifyDBSnapshotAttribute</code> API action.</p>
  final String? attributeName;
  /// <p>The value or values for the manual DB snapshot attribute.</p> <p>If the <code>AttributeName</code> field is set to <code>restore</code>, then this element returns a list of IDs of the Amazon Web Services accounts that are authorized to copy or restore the manual DB snapshot. If a value of <code>all</code> is in the list, then the manual DB snapshot is public and available for any Amazon Web Services account to copy or restore.</p>
  final List<String>? attributeValues;

  /// Creates a new [DBSnapshotAttribute].
  /// [attributeName] <p>The name of the manual DB snapshot attribute.</p> <p>The attribute named <code>restore</code> refers to the list of Amazon Web Services accounts that have permission to copy or restore the manual DB cluster snapshot. For more information, see the <code>ModifyDBSnapshotAttribute</code> API action.</p>
  /// [attributeValues] <p>The value or values for the manual DB snapshot attribute.</p> <p>If the <code>AttributeName</code> field is set to <code>restore</code>, then this element returns a list of IDs of the Amazon Web Services accounts that are authorized to copy or restore the manual DB snapshot. If a value of <code>all</code> is in the list, then the manual DB snapshot is public and available for any Amazon Web Services account to copy or restore.</p>
  DBSnapshotAttribute({
    this.attributeName,
    this.attributeValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeName': ?attributeName,
      'attributeValues': ?attributeValues,
    };
  }

  factory DBSnapshotAttribute.fromMap(Map<String, dynamic> map) {
    return DBSnapshotAttribute(
      attributeName: map['attributeName'] == null ? null : map['attributeName'] as String,
      attributeValues: map['attributeValues'] == null ? null : (map['attributeValues'] as List).cast<String>(),
    );
  }
}

