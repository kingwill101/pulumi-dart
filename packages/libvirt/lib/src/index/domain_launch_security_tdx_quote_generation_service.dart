// ignore_for_file: unused_element, unnecessary_cast


class DomainLaunchSecurityTdxQuoteGenerationService {
  /// Sets the path for the quote generation service used in TDX.
  final String? path;

  /// Creates a new [DomainLaunchSecurityTdxQuoteGenerationService].
  /// [path] Sets the path for the quote generation service used in TDX.
  DomainLaunchSecurityTdxQuoteGenerationService({
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
    };
  }

  factory DomainLaunchSecurityTdxQuoteGenerationService.fromMap(Map<String, dynamic> map) {
    return DomainLaunchSecurityTdxQuoteGenerationService(
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}

