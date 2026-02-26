// ignore_for_file: unused_element, unnecessary_cast

class InstanceGroupManagerActionsSummaryResponse3 {
  /// The total number of instances in the managed instance group that are scheduled to be abandoned. Abandoning an instance removes it from the managed instance group without deleting it.
  final int abandoning;

  /// The number of instances in the managed instance group that are scheduled to be created or are currently being created. If the group fails to create any of these instances, it tries again until it creates the instance successfully. If you have disabled creation retries, this field will not be populated; instead, the creatingWithoutRetries field will be populated.
  final int creating;

  /// The number of instances that the managed instance group will attempt to create. The group attempts to create each instance only once. If the group fails to create any of these instances, it decreases the group's targetSize value accordingly.
  final int creatingWithoutRetries;

  /// The number of instances in the managed instance group that are scheduled to be deleted or are currently being deleted.
  final int deleting;

  /// The number of instances in the managed instance group that are running and have no scheduled actions.
  final int none;

  /// The number of instances in the managed instance group that are scheduled to be recreated or are currently being being recreated. Recreating an instance deletes the existing root persistent disk and creates a new disk from the image that is defined in the instance template.
  final int recreating;

  /// The number of instances in the managed instance group that are being reconfigured with properties that do not require a restart or a recreate action. For example, setting or removing target pools for the instance.
  final int refreshing;

  /// The number of instances in the managed instance group that are scheduled to be restarted or are currently being restarted.
  final int restarting;

  /// The number of instances in the managed instance group that are scheduled to be resumed or are currently being resumed.
  final int resuming;

  /// The number of instances in the managed instance group that are scheduled to be started or are currently being started.
  final int starting;

  /// The number of instances in the managed instance group that are scheduled to be stopped or are currently being stopped.
  final int stopping;

  /// The number of instances in the managed instance group that are scheduled to be suspended or are currently being suspended.
  final int suspending;

  /// The number of instances in the managed instance group that are being verified. See the managedInstances[].currentAction property in the listManagedInstances method documentation.
  final int verifying;

  InstanceGroupManagerActionsSummaryResponse3({
    required this.abandoning,
    required this.creating,
    required this.creatingWithoutRetries,
    required this.deleting,
    required this.none,
    required this.recreating,
    required this.refreshing,
    required this.restarting,
    required this.resuming,
    required this.starting,
    required this.stopping,
    required this.suspending,
    required this.verifying,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['abandoning'] = abandoning;
    map['creating'] = creating;
    map['creatingWithoutRetries'] = creatingWithoutRetries;
    map['deleting'] = deleting;
    map['none'] = none;
    map['recreating'] = recreating;
    map['refreshing'] = refreshing;
    map['restarting'] = restarting;
    map['resuming'] = resuming;
    map['starting'] = starting;
    map['stopping'] = stopping;
    map['suspending'] = suspending;
    map['verifying'] = verifying;
    return map;
  }

  factory InstanceGroupManagerActionsSummaryResponse3.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerActionsSummaryResponse3(
      abandoning: map['abandoning'] as int,
      creating: map['creating'] as int,
      creatingWithoutRetries: map['creatingWithoutRetries'] as int,
      deleting: map['deleting'] as int,
      none: map['none'] as int,
      recreating: map['recreating'] as int,
      refreshing: map['refreshing'] as int,
      restarting: map['restarting'] as int,
      resuming: map['resuming'] as int,
      starting: map['starting'] as int,
      stopping: map['stopping'] as int,
      suspending: map['suspending'] as int,
      verifying: map['verifying'] as int,
    );
  }
}
