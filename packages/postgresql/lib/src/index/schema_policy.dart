// ignore_for_file: unused_element, unnecessary_cast


class SchemaPolicy {
  /// Should the specified ROLE have CREATE privileges to the specified SCHEMA.
  final bool? create;
  /// Should the specified ROLE have CREATE privileges to the specified SCHEMA and the ability to GRANT the CREATE privilege to other ROLEs.
  final bool? createWithGrant;
  /// The ROLE who is receiving the policy.  If this value is empty or not specified it implies the policy is referring to the [`PUBLIC` role](https://www.postgresql.org/docs/current/static/sql-grant.html).
  final String? role;
  /// Should the specified ROLE have USAGE privileges to the specified SCHEMA.
  final bool? usage;
  /// Should the specified ROLE have USAGE privileges to the specified SCHEMA and the ability to GRANT the USAGE privilege to other ROLEs.
  ///
  /// > **NOTE on `policy`:** The permissions of a role specified in multiple policy blocks is cumulative.  For example, if the same role is specified in two different `policy` each with different permissions (e.g. `create` and `usage_with_grant`, respectively), then the specified role with have both `create` and `usage_with_grant` privileges.
  final bool? usageWithGrant;

  /// Creates a new [SchemaPolicy].
  /// [create] Should the specified ROLE have CREATE privileges to the specified SCHEMA.
  /// [createWithGrant] Should the specified ROLE have CREATE privileges to the specified SCHEMA and the ability to GRANT the CREATE privilege to other ROLEs.
  /// [role] The ROLE who is receiving the policy.  If this value is empty or not specified it implies the policy is referring to the [`PUBLIC` role](https://www.postgresql.org/docs/current/static/sql-grant.html).
  /// [usage] Should the specified ROLE have USAGE privileges to the specified SCHEMA.
  /// [usageWithGrant] Should the specified ROLE have USAGE privileges to the specified SCHEMA and the ability to GRANT the USAGE privilege to other ROLEs.
  SchemaPolicy({
    this.create,
    this.createWithGrant,
    this.role,
    this.usage,
    this.usageWithGrant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'create': ?create,
      'createWithGrant': ?createWithGrant,
      'role': ?role,
      'usage': ?usage,
      'usageWithGrant': ?usageWithGrant,
    };
  }

  factory SchemaPolicy.fromMap(Map<String, dynamic> map) {
    return SchemaPolicy(
      create: map['create'] == null ? null : map['create'] as bool,
      createWithGrant: map['createWithGrant'] == null ? null : map['createWithGrant'] as bool,
      role: map['role'] == null ? null : map['role'] as String,
      usage: map['usage'] == null ? null : map['usage'] as bool,
      usageWithGrant: map['usageWithGrant'] == null ? null : map['usageWithGrant'] as bool,
    );
  }
}

