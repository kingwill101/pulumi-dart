// ignore_for_file: unused_element, unnecessary_cast

import 'stream_rule_set_object_filter_source_object_identifier_mongodb_identifier.dart';
import 'stream_rule_set_object_filter_source_object_identifier_mysql_identifier.dart';
import 'stream_rule_set_object_filter_source_object_identifier_oracle_identifier.dart';
import 'stream_rule_set_object_filter_source_object_identifier_postgresql_identifier.dart';
import 'stream_rule_set_object_filter_source_object_identifier_salesforce_identifier.dart';
import 'stream_rule_set_object_filter_source_object_identifier_spanner_identifier.dart';
import 'stream_rule_set_object_filter_source_object_identifier_sql_server_identifier.dart';

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

  /// Creates a new [StreamRuleSetObjectFilterSourceObjectIdentifier].
  /// [mongodbIdentifier] A nested object resource.
  /// [mysqlIdentifier] A nested object resource.
  /// [oracleIdentifier] A nested object resource.
  /// [postgresqlIdentifier] A nested object resource.
  /// [salesforceIdentifier] A nested object resource.
  /// [spannerIdentifier] A nested object resource.
  /// [sqlServerIdentifier] A nested object resource.
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
    return <String, dynamic>{
      'mongodbIdentifier': ?mongodbIdentifier == null
          ? null
          : mongodbIdentifier!.toMap(),
      'mysqlIdentifier': ?mysqlIdentifier == null
          ? null
          : mysqlIdentifier!.toMap(),
      'oracleIdentifier': ?oracleIdentifier == null
          ? null
          : oracleIdentifier!.toMap(),
      'postgresqlIdentifier': ?postgresqlIdentifier == null
          ? null
          : postgresqlIdentifier!.toMap(),
      'salesforceIdentifier': ?salesforceIdentifier == null
          ? null
          : salesforceIdentifier!.toMap(),
      'spannerIdentifier': ?spannerIdentifier == null
          ? null
          : spannerIdentifier!.toMap(),
      'sqlServerIdentifier': ?sqlServerIdentifier == null
          ? null
          : sqlServerIdentifier!.toMap(),
    };
  }

  factory StreamRuleSetObjectFilterSourceObjectIdentifier.fromMap(
    Map<String, dynamic> map,
  ) {
    return StreamRuleSetObjectFilterSourceObjectIdentifier(
      mongodbIdentifier: map['mongodbIdentifier'] == null
          ? null
          : StreamRuleSetObjectFilterSourceObjectIdentifierMongodbIdentifier.fromMap(
              (map['mongodbIdentifier'] as Map).cast<String, dynamic>(),
            ),
      mysqlIdentifier: map['mysqlIdentifier'] == null
          ? null
          : StreamRuleSetObjectFilterSourceObjectIdentifierMysqlIdentifier.fromMap(
              (map['mysqlIdentifier'] as Map).cast<String, dynamic>(),
            ),
      oracleIdentifier: map['oracleIdentifier'] == null
          ? null
          : StreamRuleSetObjectFilterSourceObjectIdentifierOracleIdentifier.fromMap(
              (map['oracleIdentifier'] as Map).cast<String, dynamic>(),
            ),
      postgresqlIdentifier: map['postgresqlIdentifier'] == null
          ? null
          : StreamRuleSetObjectFilterSourceObjectIdentifierPostgresqlIdentifier.fromMap(
              (map['postgresqlIdentifier'] as Map).cast<String, dynamic>(),
            ),
      salesforceIdentifier: map['salesforceIdentifier'] == null
          ? null
          : StreamRuleSetObjectFilterSourceObjectIdentifierSalesforceIdentifier.fromMap(
              (map['salesforceIdentifier'] as Map).cast<String, dynamic>(),
            ),
      spannerIdentifier: map['spannerIdentifier'] == null
          ? null
          : StreamRuleSetObjectFilterSourceObjectIdentifierSpannerIdentifier.fromMap(
              (map['spannerIdentifier'] as Map).cast<String, dynamic>(),
            ),
      sqlServerIdentifier: map['sqlServerIdentifier'] == null
          ? null
          : StreamRuleSetObjectFilterSourceObjectIdentifierSqlServerIdentifier.fromMap(
              (map['sqlServerIdentifier'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
