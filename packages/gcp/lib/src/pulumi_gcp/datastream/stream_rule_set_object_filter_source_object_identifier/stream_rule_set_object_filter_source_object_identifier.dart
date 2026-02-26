// ignore_for_file: unused_element, unnecessary_cast

import '../stream_rule_set_object_filter_source_object_identifier_mongodb_identifier/stream_rule_set_object_filter_source_object_identifier_mongodb_identifier.dart';
import '../stream_rule_set_object_filter_source_object_identifier_mysql_identifier/stream_rule_set_object_filter_source_object_identifier_mysql_identifier.dart';
import '../stream_rule_set_object_filter_source_object_identifier_oracle_identifier/stream_rule_set_object_filter_source_object_identifier_oracle_identifier.dart';
import '../stream_rule_set_object_filter_source_object_identifier_postgresql_identifier/stream_rule_set_object_filter_source_object_identifier_postgresql_identifier.dart';
import '../stream_rule_set_object_filter_source_object_identifier_salesforce_identifier/stream_rule_set_object_filter_source_object_identifier_salesforce_identifier.dart';
import '../stream_rule_set_object_filter_source_object_identifier_spanner_identifier/stream_rule_set_object_filter_source_object_identifier_spanner_identifier.dart';
import '../stream_rule_set_object_filter_source_object_identifier_sql_server_identifier/stream_rule_set_object_filter_source_object_identifier_sql_server_identifier.dart';

class StreamRuleSetObjectFilterSourceObjectIdentifier {
  /// A nested object resource.
  /// Structure is documented below.
  final StreamRuleSetObjectFilterSourceObjectIdentifierMongodbIdentifier?
      mongodbIdentifier;

  /// A nested object resource.
  /// Structure is documented below.
  final StreamRuleSetObjectFilterSourceObjectIdentifierMysqlIdentifier?
      mysqlIdentifier;

  /// A nested object resource.
  /// Structure is documented below.
  final StreamRuleSetObjectFilterSourceObjectIdentifierOracleIdentifier?
      oracleIdentifier;

  /// A nested object resource.
  /// Structure is documented below.
  final StreamRuleSetObjectFilterSourceObjectIdentifierPostgresqlIdentifier?
      postgresqlIdentifier;

  /// A nested object resource.
  /// Structure is documented below.
  final StreamRuleSetObjectFilterSourceObjectIdentifierSalesforceIdentifier?
      salesforceIdentifier;

  /// A nested object resource.
  /// Structure is documented below.
  final StreamRuleSetObjectFilterSourceObjectIdentifierSpannerIdentifier?
      spannerIdentifier;

  /// A nested object resource.
  /// Structure is documented below.
  final StreamRuleSetObjectFilterSourceObjectIdentifierSqlServerIdentifier?
      sqlServerIdentifier;

  StreamRuleSetObjectFilterSourceObjectIdentifier({
    this.mongodbIdentifier,
    this.mysqlIdentifier,
    this.oracleIdentifier,
    this.postgresqlIdentifier,
    this.salesforceIdentifier,
    this.spannerIdentifier,
    this.sqlServerIdentifier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final mongodbIdentifierValue = mongodbIdentifier;
    if (mongodbIdentifierValue != null) {
      map['mongodbIdentifier'] = mongodbIdentifierValue.toMap();
    }
    final mysqlIdentifierValue = mysqlIdentifier;
    if (mysqlIdentifierValue != null) {
      map['mysqlIdentifier'] = mysqlIdentifierValue.toMap();
    }
    final oracleIdentifierValue = oracleIdentifier;
    if (oracleIdentifierValue != null) {
      map['oracleIdentifier'] = oracleIdentifierValue.toMap();
    }
    final postgresqlIdentifierValue = postgresqlIdentifier;
    if (postgresqlIdentifierValue != null) {
      map['postgresqlIdentifier'] = postgresqlIdentifierValue.toMap();
    }
    final salesforceIdentifierValue = salesforceIdentifier;
    if (salesforceIdentifierValue != null) {
      map['salesforceIdentifier'] = salesforceIdentifierValue.toMap();
    }
    final spannerIdentifierValue = spannerIdentifier;
    if (spannerIdentifierValue != null) {
      map['spannerIdentifier'] = spannerIdentifierValue.toMap();
    }
    final sqlServerIdentifierValue = sqlServerIdentifier;
    if (sqlServerIdentifierValue != null) {
      map['sqlServerIdentifier'] = sqlServerIdentifierValue.toMap();
    }
    return map;
  }

  factory StreamRuleSetObjectFilterSourceObjectIdentifier.fromMap(
      Map<String, dynamic> map) {
    return StreamRuleSetObjectFilterSourceObjectIdentifier(
      mongodbIdentifier: map['mongodbIdentifier'] == null
          ? null
          : StreamRuleSetObjectFilterSourceObjectIdentifierMongodbIdentifier
              .fromMap(
                  (map['mongodbIdentifier'] as Map).cast<String, dynamic>()),
      mysqlIdentifier: map['mysqlIdentifier'] == null
          ? null
          : StreamRuleSetObjectFilterSourceObjectIdentifierMysqlIdentifier
              .fromMap((map['mysqlIdentifier'] as Map).cast<String, dynamic>()),
      oracleIdentifier: map['oracleIdentifier'] == null
          ? null
          : StreamRuleSetObjectFilterSourceObjectIdentifierOracleIdentifier
              .fromMap(
                  (map['oracleIdentifier'] as Map).cast<String, dynamic>()),
      postgresqlIdentifier: map['postgresqlIdentifier'] == null
          ? null
          : StreamRuleSetObjectFilterSourceObjectIdentifierPostgresqlIdentifier
              .fromMap(
                  (map['postgresqlIdentifier'] as Map).cast<String, dynamic>()),
      salesforceIdentifier: map['salesforceIdentifier'] == null
          ? null
          : StreamRuleSetObjectFilterSourceObjectIdentifierSalesforceIdentifier
              .fromMap(
                  (map['salesforceIdentifier'] as Map).cast<String, dynamic>()),
      spannerIdentifier: map['spannerIdentifier'] == null
          ? null
          : StreamRuleSetObjectFilterSourceObjectIdentifierSpannerIdentifier
              .fromMap(
                  (map['spannerIdentifier'] as Map).cast<String, dynamic>()),
      sqlServerIdentifier: map['sqlServerIdentifier'] == null
          ? null
          : StreamRuleSetObjectFilterSourceObjectIdentifierSqlServerIdentifier
              .fromMap(
                  (map['sqlServerIdentifier'] as Map).cast<String, dynamic>()),
    );
  }
}
