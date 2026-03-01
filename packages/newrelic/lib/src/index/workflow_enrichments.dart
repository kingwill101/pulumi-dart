// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_enrichments_nrql.dart';

class WorkflowEnrichments {
  /// (Required) Nrql type Enrichments.
  final List<WorkflowEnrichmentsNrql> nrqls;

  /// Creates a new [WorkflowEnrichments].
  /// [nrqls] (Required) Nrql type Enrichments.
  WorkflowEnrichments({
    required this.nrqls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nrqls': pulumi.Input.encodeList<WorkflowEnrichmentsNrql, Map<String, dynamic>>(nrqls, (value) => value.toMap()),
    };
  }

  factory WorkflowEnrichments.fromMap(Map<String, dynamic> map) {
    return WorkflowEnrichments(
      nrqls: pulumi.Input.decodeList<WorkflowEnrichmentsNrql>(map['nrqls'], (value) => WorkflowEnrichmentsNrql.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

