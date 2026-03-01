/// Determines whether to propagate the tags from the task definition to the Amazon EBS volume. Tags can only propagate to a ``SERVICE`` specified in ``ServiceVolumeConfiguration``. If no value is specified, the tags aren't propagated.
enum EBSTagSpecificationPropagateTags {
  sERVICE("SERVICE"),
  tASKDEFINITION("TASK_DEFINITION");

  const EBSTagSpecificationPropagateTags(this.value);
  final String value;

  static EBSTagSpecificationPropagateTags fromValue(String value) {
    for (final item in EBSTagSpecificationPropagateTags.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EBSTagSpecificationPropagateTags value: $value');
  }
}

