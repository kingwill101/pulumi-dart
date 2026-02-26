/// Required. The recovered Dockerfile directive used to construct this layer.
enum LayerDirective2 {
  directiveUnspecified("DIRECTIVE_UNSPECIFIED"),
  maintainer("MAINTAINER"),
  run("RUN"),
  cmd("CMD"),
  label("LABEL"),
  expose("EXPOSE"),
  env("ENV"),
  add("ADD"),
  copy("COPY"),
  entrypoint("ENTRYPOINT"),
  volume("VOLUME"),
  user("USER"),
  workdir("WORKDIR"),
  arg("ARG"),
  onbuild("ONBUILD"),
  stopsignal("STOPSIGNAL"),
  healthcheck("HEALTHCHECK"),
  shell("SHELL");

  const LayerDirective2(this.value);
  final String value;

  static LayerDirective2 fromValue(String value) {
    for (final item in LayerDirective2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LayerDirective2 value: $value');
  }
}
