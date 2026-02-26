/// The current migration job state.
enum MigrationJobState2 {
  stateUnspecified("STATE_UNSPECIFIED"),
  maintenance("MAINTENANCE"),
  draft("DRAFT"),
  creating("CREATING"),
  notStarted("NOT_STARTED"),
  running("RUNNING"),
  failed("FAILED"),
  completed("COMPLETED"),
  deleting("DELETING"),
  stopping("STOPPING"),
  stopped("STOPPED"),
  deleted("DELETED"),
  updating("UPDATING"),
  starting("STARTING"),
  restarting("RESTARTING"),
  resuming("RESUMING");

  const MigrationJobState2(this.value);
  final String value;

  static MigrationJobState2 fromValue(String value) {
    for (final item in MigrationJobState2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MigrationJobState2 value: $value');
  }
}
