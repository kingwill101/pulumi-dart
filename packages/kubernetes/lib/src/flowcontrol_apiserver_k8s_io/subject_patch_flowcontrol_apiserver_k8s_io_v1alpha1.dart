// ignore_for_file: unused_element, unnecessary_cast

import 'group_subject_patch_flowcontrol_apiserver_k8s_io_v1alpha1.dart';
import 'service_account_subject_patch_flowcontrol_apiserver_k8s_io_v1alpha1.dart';
import 'user_subject_patch_flowcontrol_apiserver_k8s_io_v1alpha1.dart';

/// Subject matches the originator of a request, as identified by the request authentication system. There are three ways of matching an originator; by user, group, or service account.
class SubjectPatchFlowcontrolApiserverK8sIoV1alpha1 {
  final GroupSubjectPatchFlowcontrolApiserverK8sIoV1alpha1? group;
  /// Required
  final String? kind;
  final ServiceAccountSubjectPatchFlowcontrolApiserverK8sIoV1alpha1? serviceAccount;
  final UserSubjectPatchFlowcontrolApiserverK8sIoV1alpha1? user;

  /// Creates a new [SubjectPatchFlowcontrolApiserverK8sIoV1alpha1].
  /// [group] Optional.
  /// [kind] Required
  /// [serviceAccount] Optional.
  /// [user] Optional.
  SubjectPatchFlowcontrolApiserverK8sIoV1alpha1({
    this.group,
    this.kind,
    this.serviceAccount,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': ?group == null ? null : group!.toMap(),
      'kind': ?kind,
      'serviceAccount': ?serviceAccount == null ? null : serviceAccount!.toMap(),
      'user': ?user == null ? null : user!.toMap(),
    };
  }

  factory SubjectPatchFlowcontrolApiserverK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return SubjectPatchFlowcontrolApiserverK8sIoV1alpha1(
      group: map['group'] == null ? null : GroupSubjectPatchFlowcontrolApiserverK8sIoV1alpha1.fromMap((map['group'] as Map).cast<String, dynamic>()),
      kind: map['kind'] == null ? null : map['kind'] as String,
      serviceAccount: map['serviceAccount'] == null ? null : ServiceAccountSubjectPatchFlowcontrolApiserverK8sIoV1alpha1.fromMap((map['serviceAccount'] as Map).cast<String, dynamic>()),
      user: map['user'] == null ? null : UserSubjectPatchFlowcontrolApiserverK8sIoV1alpha1.fromMap((map['user'] as Map).cast<String, dynamic>()),
    );
  }
}

