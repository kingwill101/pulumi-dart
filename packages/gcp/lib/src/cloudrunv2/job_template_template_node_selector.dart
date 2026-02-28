// ignore_for_file: unused_element, unnecessary_cast

class JobTemplateTemplateNodeSelector {
  /// The GPU to attach to an instance. See https://cloud.google.com/run/docs/configuring/jobs/gpu for configuring GPU.
  final String accelerator;

  /// Creates a new [JobTemplateTemplateNodeSelector].
  /// [accelerator] The GPU to attach to an instance. See https://cloud.google.com/run/docs/configuring/jobs/gpu for configuring GPU.
  JobTemplateTemplateNodeSelector({
    required this.accelerator,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accelerator'] = accelerator;
    return map;
  }

  factory JobTemplateTemplateNodeSelector.fromMap(Map<String, dynamic> map) {
    return JobTemplateTemplateNodeSelector(
      accelerator: map['accelerator'] as String,
    );
  }
}
