// ignore_for_file: unused_element, unnecessary_cast


class WindowsWebAppSiteConfigVirtualApplicationVirtualDirectory {
  /// The physical path for the Virtual Application.
  final String? physicalPath;
  /// The Virtual Path for the Virtual Application.
  final String? virtualPath;

  /// Creates a new [WindowsWebAppSiteConfigVirtualApplicationVirtualDirectory].
  /// [physicalPath] The physical path for the Virtual Application.
  /// [virtualPath] The Virtual Path for the Virtual Application.
  WindowsWebAppSiteConfigVirtualApplicationVirtualDirectory({
    this.physicalPath,
    this.virtualPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'physicalPath': ?physicalPath,
      'virtualPath': ?virtualPath,
    };
  }

  factory WindowsWebAppSiteConfigVirtualApplicationVirtualDirectory.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSiteConfigVirtualApplicationVirtualDirectory(
      physicalPath: map['physicalPath'] == null ? null : map['physicalPath'] as String,
      virtualPath: map['virtualPath'] == null ? null : map['virtualPath'] as String,
    );
  }
}

