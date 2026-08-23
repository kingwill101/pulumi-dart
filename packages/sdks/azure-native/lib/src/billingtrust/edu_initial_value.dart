// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_entry.dart';

/// Initial values for an education qualification rule. Per-domain entries (`domainNames` + `tenantId`) are used to populate the rule when the assessment is created.
class EduInitialValue {
  /// Per-domain entries to use when populating the education qualification rule. Only `domainNames` and `tenantId` are read from this payload; `state` and `error` on each entry are populated by the service.
  final pulumi.Input<List<DomainEntry>> domains;
  /// The kind of rule. Additional kinds may be added in future API versions.
  /// Expected value is 'eduQualification'.
  final pulumi.Input<String> kind;

  /// Creates a new [EduInitialValue].
  /// [domains] Per-domain entries to use when populating the education qualification rule. Only `domainNames` and `tenantId` are read from this payload; `state` and `error` on each entry are populated by the service.
  /// [kind] The kind of rule. Additional kinds may be added in future API versions.
  const EduInitialValue({
    required this.domains,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domains': pulumi.Input.mapInputValue<List<DomainEntry>, List<Map<String, dynamic>>>(domains, (value) => pulumi.Input.encodeList<DomainEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': kind,
    };
  }

  factory EduInitialValue.fromMap(Map<String, dynamic> map) {
    return EduInitialValue(
      domains: pulumi.Input.fromValue(pulumi.Input.decodeList<DomainEntry>(map['domains']!, (value) => DomainEntry.fromMap((value as Map).cast<String, dynamic>()))),
      kind: pulumi.Input.fromValue(map['kind'] as String),
    );
  }
}
