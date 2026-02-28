// ignore_for_file: unused_element, unnecessary_cast

class AppHostingBuildSourceContainer {
  /// A URI representing a container for the backend to use.
  final String image;

  /// Creates a new [AppHostingBuildSourceContainer].
  /// [image] A URI representing a container for the backend to use.
  AppHostingBuildSourceContainer({
    required this.image,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['image'] = image;
    return map;
  }

  factory AppHostingBuildSourceContainer.fromMap(Map<String, dynamic> map) {
    return AppHostingBuildSourceContainer(
      image: map['image'] as String,
    );
  }
}
