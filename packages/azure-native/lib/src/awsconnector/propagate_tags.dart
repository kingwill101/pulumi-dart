/// Specifies whether to propagate the tags from the task definition to the task. If no value is specified, the tags aren't propagated. Tags can only be propagated to the task during task creation. To add tags to a task after task creation, use the [TagResource](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_TagResource.html) API action. The default is ``NONE``.
enum PropagateTags {
  sERVICE("SERVICE"),
  tASKDEFINITION("TASK_DEFINITION");

  const PropagateTags(this.value);
  final String value;

  static PropagateTags fromValue(String value) {
    for (final item in PropagateTags.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PropagateTags value: $value');
  }
}

