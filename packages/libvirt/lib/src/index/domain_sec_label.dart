// ignore_for_file: unused_element, unnecessary_cast


class DomainSecLabel {
  /// Specifies the base label for the domain's security configuration.
  final String? baseLabel;
  /// Sets the image label for the domain's security configuration.
  final String? imageLabel;
  /// Specifies the security label for the domain.
  final String? label;
  /// Configures the model for the domain's security label.
  final String? model;
  /// Controls if the domain's security label should be relabeled.
  final String? relabel;
  /// Sets the type of the security label for the domain.
  final String? type;

  /// Creates a new [DomainSecLabel].
  /// [baseLabel] Specifies the base label for the domain's security configuration.
  /// [imageLabel] Sets the image label for the domain's security configuration.
  /// [label] Specifies the security label for the domain.
  /// [model] Configures the model for the domain's security label.
  /// [relabel] Controls if the domain's security label should be relabeled.
  /// [type] Sets the type of the security label for the domain.
  DomainSecLabel({
    this.baseLabel,
    this.imageLabel,
    this.label,
    this.model,
    this.relabel,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseLabel': ?baseLabel,
      'imageLabel': ?imageLabel,
      'label': ?label,
      'model': ?model,
      'relabel': ?relabel,
      'type': ?type,
    };
  }

  factory DomainSecLabel.fromMap(Map<String, dynamic> map) {
    return DomainSecLabel(
      baseLabel: map['baseLabel'] == null ? null : map['baseLabel'] as String,
      imageLabel: map['imageLabel'] == null ? null : map['imageLabel'] as String,
      label: map['label'] == null ? null : map['label'] as String,
      model: map['model'] == null ? null : map['model'] as String,
      relabel: map['relabel'] == null ? null : map['relabel'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

