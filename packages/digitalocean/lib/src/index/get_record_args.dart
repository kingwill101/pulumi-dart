// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_record_get_record_args_doc}
/// Arguments for getRecord.
/// {@endtemplate}
/// {@macro pulumi_index_get_record_get_record_args_doc}
class GetRecordArgs {
  /// The domain name of the record.
  final pulumi.Input<String> domain;
  /// The name of the record.
  final pulumi.Input<String> name;

  /// Creates a new [GetRecordArgs].
  /// [domain] The domain name of the record.
  /// [name] The name of the record.
  GetRecordArgs({
    required String domain,
    required String name,
  }) :
      domain = pulumi.Input.asInput<String>(domain),
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'name': name,
    };
  }

  factory GetRecordArgs.fromMap(Map<String, dynamic> map) {
    return GetRecordArgs(
      domain: map['domain'] as String,
      name: map['name'] as String,
    );
  }
}

